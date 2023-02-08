package main

import (
	"fmt"
	"net"
	"os"

	_ "github.com/lib/pq"
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
		massage := newMassage(connection)

		handleMassage(massage)
	}
}

/*
this func handle the massage content
the func switch case depend on the
OPCode it got from the user
*/
func handleMassage(mas *massage) {

}
