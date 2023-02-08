package main

import (
	"fmt"
	"net"
)

const (
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

type loginMassage struct {
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

func massagePars(mas massage) {
	switch mas.massageOPCode {
	case LOGIN:
		fmt.Println("wants to login")
		mas.massageSocket.Write([]byte("Successfully processed"))
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
