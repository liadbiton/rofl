package main

import (
	"fmt"

	"firebase.google.com/go/v4/messaging"
)

const FIREBASE_SERVICE_ACCOUNT_KEY_PATH string = "C:\\Users\\magshimim\\Desktop\\work\\rofl_firebase_key\\rofl-684b1-firebase-adminsdk-cgqhk-17fe61be31.json"
const CLIENT_TOKEN = "dHEnNOHAQKePyuvcZXJzax:APA91bEAsXzEySnZiyQUZhfjMMcOv8_8q8EOPt6p4n6m9W7ySzP2qUJpdEC1Q8x975TenutmOQsIWfIppfMWQuYteIzY6xWX8NrpZHo3R-Ed2htHotBK6nBUxV-020xbFejvLut2VqiS"
const CLIENT_TOPIC = "topics-all"

func main() {
	fmt.Println("HELLO")
	firebase_app := initialize_fcm_service(FIREBASE_SERVICE_ACCOUNT_KEY_PATH)
	response, err := sendNotificationToToken(firebase_app, CLIENT_TOKEN, messaging.Notification{Title: "I love dick"})
	if nil != err {
		fmt.Println("Damn we failed, the response is " + response)
		fmt.Println("The error is " + err.Error())
	} else {
		fmt.Println("Successfully sent notification to token the response is " + response)
		fmt.Printf("response: %v\n", response)
	}

	response, err = sendNotificationToTopic(firebase_app, CLIENT_TOPIC, messaging.Notification{Title: "I love cock"})
	if nil != err {
		fmt.Println("Damn we failed, the response is " + response)
		fmt.Println("The error is " + err.Error())
	} else {
		fmt.Println("Successfully sent notification to topic the response is " + response)
		fmt.Printf("response: %v\n", response)
	}

}
