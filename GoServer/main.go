package main

import (
	"fmt"
	"net"
	"os"

	_ "github.com/lib/pq"
)

const (
	SERVERHOST = "192.168.1.230"
	SERVERPORT = "9988"
	SERVERTYPE = "tcp"
)

func main() {

	//run the listening serevr
	go runServer()
}

/*
this function run the server that take cares of
the connecting clients, every new client, the server
creates a new thred for the client server connction
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
this function holds widin the connection between
the client and the server and answer every massage
from the client.
*/
func clientConnected(connection net.Conn) {
	buffer := make([]byte, 1024)
	for {
		mLen, err := connection.Read(buffer)
		if err != nil {
			fmt.Println("Error reading:", err.Error())
			connection.Close()
			return
			connection.RemoteAddr()
		}
		fmt.Println("Received: ", string(buffer[:mLen]))
		_, err = connection.Write([]byte("Thanks! Got your message:" + string(buffer[:mLen])))
	}
}
