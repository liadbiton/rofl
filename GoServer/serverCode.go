package main

import (
	"fmt"
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
		go clientHandler(connection)
	}
}
