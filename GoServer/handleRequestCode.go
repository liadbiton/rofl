package main

import (
	"GoServer/protocol/protobuf"
	"fmt"
)

/*
the func switch case between all the request options
the func generate a response for every request possible using diffrent func for every type
*/
func handleRequest(req protobuf.AppRequest) protobuf.AppResponse {
	resp := protobuf.AppResponse{}

	switch req.Request.(type) {
	case *protobuf.AppRequest_LogicRequest:
		resp = generateLoginResp(req)
	case *protobuf.AppRequest_RegisterRequest:
		resp = generateRegisterResp(req)
	}

	return resp
}

// func in build state
func generateLoginResp(req protobuf.AppRequest) protobuf.AppResponse {
	resp := &protobuf.AppResponse{}
	resp.RequestId = req.RequestId

	//liad's function here
	//req.Request.(*protobuf.AppRequest_LogicRequest).LogicRequest.UserIdentifier
	//if
	resp.Response.(*protobuf.AppResponse_LoginResponse).LoginResponse.ReturnCode = 0
	fmt.Println("Login succeed")
	//else
	resp.Response.(*protobuf.AppResponse_LoginResponse).LoginResponse.ReturnCode = 1
	fmt.Println("Login failed")

	return *resp
}

// func in building state
func generateRegisterResp(req protobuf.AppRequest) protobuf.AppResponse {
	resp := &protobuf.AppResponse{}
	resp.RequestId = req.RequestId

	//liad's function here
	//req.Request.(*protobuf.AppResponse_RegisterResponse).RegisterRequest.first_name
	//switch
	resp.Response.(*protobuf.AppResponse_RegisterResponse).RegisterResponse.ReturnCode = 0
	fmt.Println("Register succeed")
	//or
	resp.Response.(*protobuf.AppResponse_RegisterResponse).RegisterResponse.ReturnCode = 1
	fmt.Println("Register failed phone taken")
	//or
	resp.Response.(*protobuf.AppResponse_RegisterResponse).RegisterResponse.ReturnCode = 2
	fmt.Println("Register failed email taken")

	return *resp
}
