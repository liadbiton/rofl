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
	SERVERHOST = "127.0.0.1"
	SERVERPORT = "9988"
	SERVERTYPE = "tcp"
)

/*
this function run the server that take cares of
the connecting clients, every new client, the server
creates a new goroutine for the client server connection.
*/

func runServer() {
	fmt.Println("Server running...")
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
			fmt.Println("Client disconnected")
			return
		}
		sendResponse(connection, newRequest)
	}
}

/*
this func read a request from the user
first it takes the amount of byte to read from the user
then it takes the whole message using protobuf protocol
the func return newRequest as a struct holding the message within
*/
func getRequest(connection net.Conn) (bool, protobuf.AppRequest) {
	newRequest := &protobuf.AppRequest{}
	err := false
	sizeOfBuffer := make([]byte, 4)
	//reading 4 bytes from the user - this bytes will tell how much the whole message will be
	_, reErr := connection.Read(sizeOfBuffer)
	if reErr != nil {
		fmt.Println("Reading size from server error")
		connection.Close()
		err = true
		return err, *newRequest
	}
	fmt.Println(sizeOfBuffer) //for debugging

	//reading the whole message here
	buffer := make([]byte, binary.BigEndian.Uint32(sizeOfBuffer))
	_, reErr = connection.Read(buffer)
	if reErr != nil {
		fmt.Println("Reading from server error")
		connection.Close()
		err = true
		return err, *newRequest
	}
	fmt.Println(buffer) //for debugging

	//unmarshal func transfer the info from the buffer into the struct
	unErr := proto.Unmarshal(buffer, newRequest)
	if unErr != nil {
		fmt.Println("Unmarshal error")
	}

	//return the struct
	return err, *newRequest
}

/*
this func take the struct newResponse
the func send the response to the user in bytes
*/
func sendResponse(conn net.Conn, req protobuf.AppRequest) {
	newResponse := generateResponse(req)

	//marshal transfer the info from the struct into a byte array
	buffer, mErr := proto.Marshal(&newResponse)
	if mErr != nil {
		fmt.Println("Marshal error")
	}
	fmt.Println(buffer) //for debugging

	//taking the size of the array as 4 bytes(int32)
	sizeInByte := new(bytes.Buffer)
	sizeOfBuffer := int32(len(buffer))
	err := binary.Write(sizeInByte, binary.BigEndian, sizeOfBuffer)
	if err != nil {
		fmt.Println("Error converting")
	}

	//first sending the size and then the whole message
	conn.Write(sizeInByte.Bytes())
	conn.Write(buffer)
}

/*
the func switch case between all the request options
the func generate a response for every request possible using diffrent func for every type
*/
func generateResponse(req protobuf.AppRequest) protobuf.AppResponse {
	resp := protobuf.AppResponse{}

	switch req.Request.(type) {
	case *protobuf.AppRequest_LogicRequest:
		resp = generateLoginResp(req)
	case *protobuf.AppRequest_RegisterRequest:
		resp = generateRegisterResp(req)
	}

	return resp
}

// func in build state
func generateLoginResp(req protobuf.AppRequest) protobuf.AppResponse {
	resp := &protobuf.AppResponse{}
	resp.RequestId = req.RequestId

	//liad's function here
	//req.Request.(*protobuf.AppRequest_LogicRequest).LogicRequest.UserIdentifier
	//if
	resp.Response.(*protobuf.AppResponse_LoginResponse).LoginResponse.ReturnCode = 0
	fmt.Println("Login succeed")
	//else
	resp.Response.(*protobuf.AppResponse_LoginResponse).LoginResponse.ReturnCode = 1
	fmt.Println("Login failed")

	return *resp
}

// func in building state
func generateRegisterResp(req protobuf.AppRequest) protobuf.AppResponse {
	resp := &protobuf.AppResponse{}
	resp.RequestId = req.RequestId

	//liad's function here
	//req.Request.(*protobuf.AppResponse_RegisterResponse).RegisterRequest.first_name
	//switch
	resp.Response.(*protobuf.AppResponse_RegisterResponse).RegisterResponse.ReturnCode = 0
	fmt.Println("Register succeed")
	//or
	resp.Response.(*protobuf.AppResponse_RegisterResponse).RegisterResponse.ReturnCode = 1
	fmt.Println("Register failed phone taken")
	//or
	resp.Response.(*protobuf.AppResponse_RegisterResponse).RegisterResponse.ReturnCode = 2
	fmt.Println("Register failed email taken")

	return *resp
}
