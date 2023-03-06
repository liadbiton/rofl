package main

import (
	"GoServer/protocol/protobuf"
	"encoding/binary"
	"fmt"
	"github.com/golang/protobuf/proto"
	"net"
)

func receiveRequest(connection net.Conn) (bool, protobuf.AppRequest) {
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
