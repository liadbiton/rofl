package main

import (
	"GoServer/protocol/protobuf"
	"bytes"
	"encoding/binary"
	"fmt"
	"github.com/golang/protobuf/proto"
	"net"
)

/*
sendResponse take the AppResponse struct and extract the data into bytes
then send the message aka the response back to the client
*/
func sendResponse(conn net.Conn, resp protobuf.AppResponse) {

	//marshal transfer the info from the struct into a byte array
	buffer, mErr := proto.Marshal(&resp)
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
