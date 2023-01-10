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

	LOGIN     = "0001"
	SIGNUPOLD = "0002"
	SIGNUPVOL = "0003"
	LOCATION  = "0005"
	CALLVOL   = "0010"
)

type massage struct {
	massageSocket  net.Conn
	massageOPCode  string
	massageContent string
}

/*
this func define new massage
the func wait for a massage from the client
then sets up the massage base on the OPCode
*/
func newMassage(connection net.Conn) *massage {
	mas := massage{massageSocket: connection}
	buffer := make([]byte, 1024)
	mLen, err := connection.Read(buffer)
	if err != nil {
		fmt.Println("Error reading:", err.Error())
		connection.Close()
		return nil
	}
	mas.massageContent = string(buffer[:mLen])
	mas.massageOPCode = string(buffer[:4])
	return &mas
}

func main() {
	runServer()
}

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
	switch mas.massageOPCode {
	case LOGIN:
		fmt.Println("wants to login")
		//login(mas)
	case SIGNUPOLD:
		fmt.Println("wants to sign up as elder")
		//signupOld(mas)
	case SIGNUPVOL:
		fmt.Println("wants to sign up as volunteer")
		//signupVol(mas)
	case LOCATION:
		fmt.Println("wants to send location")
	//getLocation(mas)
	case CALLVOL:
		fmt.Println("wants to call a vol")
		//callVol(mas)
	default:
		fmt.Println("massage is not by protocol")
	}
}
