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

func main() {
	runServer()
}

/*
this function run the server that take cares of
the connecting clients, every new client, the server
creates a new goroutine for the client server connection
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
	buffer := make([]byte, 1024)
	channel := make(chan []byte)
	go massageManager(channel)
	for {
		mLen, err := connection.Read(buffer)
		if err != nil {
			fmt.Println("Error reading:", err.Error())
			connection.Close()
			return
		}
		channel <- buffer[:mLen]
	}
}

func massageManager(channel chan []byte) {
	for {
		massage := <-channel
		flag := 0
		firstIDX := 0
		for i := 0; i < len(massage); i++ {
			char := string(massage[i])
			if char == "a" {
				flag = 1
				firstIDX = i
			}
			if char == "b" && flag == 1 {
				fmt.Println(string(massage[firstIDX : i+1]))
			}
		}
	}
}
