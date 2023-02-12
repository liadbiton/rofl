import 'dart:ffi';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'protocol/register_request.pb.dart';
import 'protocol/protocol.pb.dart';
import 'protocol/login_request.pb.dart';
import 'protocol/user_information.pb.dart';
import 'dart:io';

AppRequest rofl = AppRequest();
RegisterRequest rofl2 = RegisterRequest();

main()
async {
  var rofl4 = 2;
  TcpClient client = TcpClient(host: "10.0.2.2", port: 9988);
  await client.connectHost();
  AppRequest rofl = AppRequest();
  rofl.version = 1;
  rofl.sessionToken = 2;
  client.sendMessage(rofl);
}
class TcpClient {
  Socket? _socket;
  String host = "";
  int port = 0;

  TcpClient({required this.host, required this.port});

  Future<void> connectHost() async {
    try {
      _socket = await Socket.connect(host, port);
      print('Connected to the server');
    } catch (e) {
      print('Failed to connect to the server due to: $e');
    }
  }

  Future<int> sendMessage(AppRequest message) async {
    try {
      if (_socket != null) {
        var data = message.writeToBuffer();
        _socket?.add(data);
        await _socket?.flush();
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

  Future<AppResponse> receiveAppResponse() async {
    try {
      if (_socket != null) {
        var data = await _socket?.first;
        return AppResponse.fromBuffer(Uint8List.fromList(data!));
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
      final _socket = this._socket;
      if (_socket != null) {
        _socket.close();
        print('Disconnected from the server');
      } else {
        print('Error: the socket is not connected');
      }
    } catch (e) {
      print('Failed to disconnect from the server due to: $e');
    }
  }
}
