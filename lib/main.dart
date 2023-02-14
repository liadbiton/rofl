import 'dart:ffi';
import 'dart:typed_data';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'protocol/register_request.pb.dart';
import 'protocol/protocol.pb.dart';
import 'protocol/login_request.pb.dart';
import 'protocol/user_information.pb.dart';
import 'dart:io';

int LENGTH_HEADER = 4;

main()
async {
  //Checks for the client.
  var rofl4 = 2;
  TcpClient client = TcpClient(host: "10.0.2.2", port: 9988);
  await client.connectHost();
  AppRequest rofl = AppRequest();
  rofl.version = 1;
  rofl.sessionToken = 2;
  rofl.requestId = 18;
  client.sendMessage(rofl);
  client.disconnect();
}
class TcpClient {
  Socket? _socket;
  String host = "";
  int port = 0;
  TcpClient({required this.host, required this.port});

  //simple connect to a socket, catches error.
  Future<void> connectHost() async {
    try {
      _socket = await Socket.connect(host, port);
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
  Future<int> sendMessage(AppRequest message) async {
    try {
      if (_socket != null) {
        var lengthBuffer = getAppRequestLength(message);
        _socket?.add(lengthBuffer); //sends the length to the server
        print('Length sent');
        print(message.writeToBuffer());
        _socket?.add(message.writeToBuffer());//send the request to the server
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
    if(_socket != null)
      {
        final length = await _socket //read the required bytes for the length
            ?.asBroadcastStream()
            .firstWhere((data) => data.length >= LENGTH_HEADER, orElse: () => Uint8List(0));
        if(length?.length == 0)
        {
          print('Error: Failed to read message length prefix');
          return Future.error('Error');
        }
        final messageLength = ByteData.sublistView(length!).getInt32(0);
        return messageLength;
      }
    else
      {
        return Future.error('Error');
      }
  }

  /*
  This function receives the data from the server, in a byte array.
   */
  Future<Uint8List?> receiveData(int length) async{
    if (_socket != null)
      {
        final messageBytes = await _socket
            ?.asBroadcastStream()
            .firstWhere((data) => data.length >= length, orElse: () => Uint8List(0));
        if (messageBytes?.length == 0) {
          print('Error: Failed to read message');
          return Future.error('Error');
        }
        return messageBytes;
      }
    else
      {
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
