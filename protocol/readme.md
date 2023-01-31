# Protobuf Communication Protocol

- [Protobuf Communication Protocol](#protobuf-communication-protocol)
  - [1. Description](#1-description)
  - [2. Installation](#2-installation)
    - [2.1. General](#21-general)
    - [2.2. Flutter](#22-flutter)
    - [2.3. Go](#23-go)
  - [3. How To Use](#3-how-to-use)
    - [3.1. Flutter](#31-flutter)
    - [3.2. Go](#32-go)
  - [4. Client Requests](#4-client-requests)
    - [4.1. Volunteer Register](#41-volunteer-register)
  - [5. Server Responses](#5-server-responses)
    - [5.1. Volunteer Register](#51-volunteer-register)


## 1. Description
TODO

## 2. Installation

### 2.1. General
- Download protoc for windows from `https://github.com/protocolbuffers/protobuf/releases`
- Add `[path\to\protoc]\bin` to environment path variable

### 2.2. Flutter
- Run `flutter pub global activate protoc_plugin`
- Add `[path\to\flutter]\.pub-cache\bin` to environment path variable

### 2.3. Go
- TODO

## 3. How To Use

### 3.1. Flutter
- `protoc --dart_out=../lib/protocol ./*.proto`

### 3.2. Go
- TODO

## 4. Client Requests
A request from the client is according to the following format:
- App version - `uint`
- Session Token - `string`
  - Received on login
  - Optional, isn't passed if the request is Register
- Request ID - `uint`
- One of the possible requests

### 4.1. Volunteer Register
- Is Volunteer - `bool`
- First Name - `string`
- Last Name - `string`
- Password - `string`
- Home Address
  - Textual - `string`
  - Latitude - `float`
  - Longitude - `float`
- Phone Number - `string`
- ID Number - `string`
- Birthday
  - Day - `uint`
  - Month - `uint`
  - Year - `uint`
- FCM Token - `string`
- Email - `string`

## 5. Server Responses
A response from the server is according to the following format:
- Received request ID - `uint`
- One of the possible responses

### 5.1. Volunteer Register
- Return Code - `enum`
  - `Success`
  - `Phone Taken`
  - `Email Taken`
  - `...`
- Session Token - `string`
  - Optional, only given if registered successfully

