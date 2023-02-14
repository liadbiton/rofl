package main

import (
	"GoServer/protocol/protobuf"
	"bytes"
	"encoding/binary"
	"fmt"
	"github.com/golang/protobuf/proto"
	_ "github.com/lib/pq"
	"net"
	"os"
)

const (
	SERVERHOST = "10.100.102.37"
	SERVERPORT = "9988"
	SERVERTYPE = "tcp"
)

/*
this function run the server that take cares of
the connecting clients, every new client, the server
creates a new goroutine for the client server connection.
*/

func runServer() {
	fmt.Println("Server Running...")
	server, err := net.Listen(SERVERTYPE, SERVERHOST+":"+SERVERPORT)
	if err != nil {
		fmt.Println("Error listening:", err.Error())
		os.Exit(1)
	}
	defer server.Close()
	fmt.Println("Listening on " + SERVERHOST + ":" + SERVERPORT)
	fmt.Println("Waiting for clients...")
	for {
		connection, err := server.Accept()
		if err != nil {
			fmt.Println("Error accepting: ", err.Error())
			os.Exit(1)
		}
		fmt.Println("client connected")
		go clientConnected(connection)
	}
}

/*
this function holds within the connection between
the client and the server and answer every massage
from the client.
*/
func clientConnected(connection net.Conn) {
	for {
		err, newRequest := getRequest(connection)
		if err {
			fmt.Println("Client Disconnected")
			return
		}
		sendResponse(connection, newRequest)
	}
}

func getRequest(connection net.Conn) (bool, protobuf.AppRequest) {
	newRequest := &protobuf.AppRequest{}
	err := false
	sizeOfBuffer := make([]byte, 4)
	_, reErr := connection.Read(sizeOfBuffer)
	if reErr != nil {
		fmt.Println("Reading Size From Server Error")
		connection.Close()
		err = true
		return err, *newRequest
	}
	fmt.Println(sizeOfBuffer)
	buffer := make([]byte, binary.BigEndian.Uint32(sizeOfBuffer))
	_, reErr = connection.Read(buffer)
	if reErr != nil {
		fmt.Println("Reading From Server Error")
	}
	fmt.Println(buffer)
	unErr := proto.Unmarshal(buffer, newRequest)
	if unErr != nil {
		fmt.Println("Unmarshal Error")
	}
	return err, *newRequest
}

func sendResponse(conn net.Conn, req protobuf.AppRequest) {
	newResponse := generateResponse(req)
	buffer, mErr := proto.Marshal(&newResponse)
	if mErr != nil {
		fmt.Println("Marshal Error")
	}
	fmt.Println(buffer)
	sizeInByte := new(bytes.Buffer)
	sizeOfBuffer := int32(len(buffer))
	err := binary.Write(sizeInByte, binary.BigEndian, sizeOfBuffer)
	if err != nil {
		fmt.Println("Error Converting")
	}
	conn.Write(sizeInByte.Bytes())
	conn.Write(buffer)
}

func generateResponse(req protobuf.AppRequest) protobuf.AppResponse {
	response := &protobuf.AppResponse{
		RequestId: req.RequestId + 150,
	}
	fmt.Println(response)
	//switch req.RequestId
	return *response
}
