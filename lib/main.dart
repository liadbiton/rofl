import 'dart:ffi';
import 'dart:typed_data';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'protocol/register_request.pb.dart';
import 'protocol/protocol.pb.dart';
import 'protocol/login_request.pb.dart';
import 'protocol/user_information.pb.dart';
import 'dart:io';

final LENGTH_HEADER = 4;

main()
async {
  //Checks for the client.
  var rofl4 = 2;
  TcpClient client = TcpClient(host: "10.100.102.37", port: 9988);
  await client.connectHost();
  AppRequest rofl = AppRequest();
  rofl.version = 1;
  rofl.sessionToken = 2;
  rofl.requestId = 18;
  client.sendAppRequest(rofl);
  var dab = await client.receiveAppResponse();
  print(dab.requestId);
}
class TcpClient {
  RawSocket? _socket;
  Socket? _socketStream;

  String host = "";
  int port = 0;
  TcpClient({required this.host, required this.port});

  //simple connect to a socket, catches error.
  Future<void> connectHost() async {
    try {
      _socket = (await RawSocket.connect(host, port));
      _socketStream = (await Socket.connect(host, port));
      print('Connected to the server');
    } catch (e) {
      print('Failed to connect to the server due to: $e');
    }
  }

  /*
  The function recieves an AppRequest type,
  and calculates the length that needs to be sent to the server, in a byte array.
   */
  Uint8List getAppRequestLength(AppRequest message)
  {
    var data = message.writeToBuffer();
    var messageLength = data.length;
    var lengthBuffer = Uint8List(LENGTH_HEADER);
    ByteData.view(lengthBuffer.buffer).setUint32(0, messageLength);
    return lengthBuffer;
  }

  /*
  The function send an AppRequest to the server.
  It will first find the length prefix and send it,
  Followed by the data from the request.
  Returns 1 if succesfull, error otherwise.
   */
  Future<int> sendAppRequest(AppRequest message) async {
    try {
      if (_socket != null) {
        var lengthBuffer = getAppRequestLength(message);
        _socket?.write(lengthBuffer); //sends the length to the server
        print('Length sent');
        print(message.writeToBuffer());
        _socket?.write(message.writeToBuffer());//send the request to the server
        print('Message sent');
        return 1;
      } else {
        print('Error: the socket is not connected');
        return Future.error('Error: the socket is not connected');
      }
    } catch (e) {
      if (e is SocketException) {
        print('Error: the socket is not connected');
        return Future.error('Error: the socket is not connected');
      } else {
        print('Failed to send message due to: $e');
        return Future.error('Error');
      }
    }
  }

  /*
  This function recieves the length of the server's response.
  Return an Int that represents the length.
   */
  Future<int> receiveLength() async {
    if (_socket != null) {
      // If the socket stream has not been stored yet, store it now.
      var length = _socket?.read(LENGTH_HEADER);
      if (length?.length == 0) {
        print('Error: Failed to read message length prefix');
        return Future.error('Error');
      }
      print(length);
      final messageLength = ByteData.sublistView(length!).getInt32(0);
      return messageLength;
    } else {
      return Future.error('Error');
    }
  }

  Future<Uint8List?> receiveData(int length) async {
    if (_socket != null) {
      // If the socket stream has not been stored yet, store it now.
      var messageBytes = _socket?.read(length);
      if (messageBytes?.length == 0) {
        print('Error: Failed to read message');
        return Future.error('Error');
      }
      return messageBytes;
    } else {
      return Future.error('Error');
    }
  }

  /*
  This function recevies the AppResponse, and returns it.
  It uses helper functions in order to recieve the length and the data.
  It will then return a deserialized AppResponse.
   */
  Future<AppResponse> receiveAppResponse() async {
    try {
      if (_socket != null) {
        var length = await receiveLength();
        print('length is: $length');
        var message = await receiveData(length);
        print('data is: $message');
        return AppResponse.fromBuffer(message!); //deserialize the byte array into an AppResponse
      } else {
        print('Error: the socket is not connected');
        return Future.error('Error');
      }
    } catch (e) {
      if (e is SocketException) {
        print('Error: the socket is not connected');
        return Future.error('Error');
      } else {
        print('Failed to receive message due to: $e');
        return Future.error('Error');
      }
    }
  }

  Future<void> disconnect() async {
    try {
      final socket = _socket;
      if (socket != null) {
        socket.close();
        print('Disconnected from the server');
      } else {
        print('Error: the socket is not connected');
      }
    } catch (e) {
      print('Failed to disconnect from the server due to: $e');
    }
  }
}

AppRequest createAppRequest(Uint32 version,Uint32 session_token ,Uint32 request_id)
{
  AppRequest newAppRequest = AppRequest();
  newAppRequest.version = version as int;
  newAppRequest.sessionToken = session_token as int;
  newAppRequest.requestId = request_id as int;
  return newAppRequest;
}

AppRequest createRegisterRequest(
    int version,int session_token ,int request_id,
    bool is_volunteer, String first_name, String last_name,
    String password, String home_address, double latitude,
    double longitude, String phone_number, String id_number,
    int day, int month, int year,
    [String fcm_token="", String email=""])
{
  HomeAddress newHomeAddress = HomeAddress(textual: home_address, latitude: latitude, longitude: longitude);
  Date newDate = Date(day: day, month: month, year: year);
  RegisterRequest newRegisterRequest = RegisterRequest(
    isVolunteer: is_volunteer,
    firstName: first_name,
    lastName: last_name,
    password: password,
    address: newHomeAddress,
    phoneNumber: phone_number,
    idNumber: id_number,
    birthday: newDate,
    fcmToken: fcm_token,
  );

  AppRequest newAppRequest = AppRequest(version: version, sessionToken: session_token, requestId: request_id, registerRequest: newRegisterRequest);

  return newAppRequest;
}

AppRequest createLoginRequest(int version,int request_id, String password, {String phone_number= "", String email = ""})
{
  LoginRequest newLoginRequest = LoginRequest(password: password);
  if(phone_number != "")
    {
      newLoginRequest.phoneNumber = phone_number;
    }
  else{
    newLoginRequest.email = email;
  }

  AppRequest newAppRequest = AppRequest(version: version, requestId: request_id, logicRequest: newLoginRequest);

  return newAppRequest;
}


