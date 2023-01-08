package main

import (
	"fmt"
	"net"
	"os"
	//"strconv"

	_ "github.com/lib/pq"
)

const (
	SERVERHOST = "127.0.0.1"
	SERVERPORT = "9988"
	SERVERTYPE = "tcp"
)

type Client struct {
	clientConn net.Conn
	clientPort int
	clientIP   string
}

type Pool struct {
}

func main() {
	//fmt.Println("hi")
	//run the listening serevr
	runServer()
	//fmt.Println("hi2")
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
	if addr, ok := connection.RemoteAddr().(*net.TCPAddr); ok {
		fmt.Println(addr.IP.String())
		fmt.Println((addr.Port))
		//client := Client{clientConn: connection, clientIP: addr.IP.String(), clientPort: addr.Port}
		//connection.
		//connection.SetDeadline()
		buffer := make(chan []byte, 1024)
		//c := make(chan int, 10)
		for {
			mLen, err := connection.Read(<-buffer)
			if err != nil {
				fmt.Println("Error reading:", err.Error())
				connection.Close()
				return
			}
			_, err = connection.Write([]byte("Thanks! Got your message:" + string(buffer[:mLen])))
		}
	}
}

func poolManage() {
	for {
		select {
		case massage:= <-
		}

	}
}
