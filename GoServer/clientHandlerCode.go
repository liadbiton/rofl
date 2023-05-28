package main

import (
	"GoServer/protocol/protobuf"
	"fmt"
	"net"
)

/*
clientHandler handle the connection for every client,
the func wait for a request, handle it and send the response back
*/
func clientHandler(connection net.Conn) {
	for {
		err, newRequest := receiveRequest(connection)
		if err {
			fmt.Println("Client disconnected")
			return
		}

		newResponse := protobuf.AppResponse{}
		newResponse = handleRequest(newRequest)

		sendResponse(connection, newResponse)
	}
}
