package main

import (
	"context"
	"fmt"
	"log"

	firebase "firebase.google.com/go/v4"
	"firebase.google.com/go/v4/messaging"
	"google.golang.org/api/option"
)

type fcmMessage struct {
	target          string
	registrationIDs []string
	data            interface{}
}

func initialize_fcm_service(service_account_key_path string) *firebase.App {
	opt := option.WithCredentialsFile(service_account_key_path)
	app, err := firebase.NewApp(context.Background(), nil, opt)
	if err != nil {
		log.Fatalf("error initializing app: %v\n", err)
	}
	return app
}

func sendNotificationToToken(app *firebase.App, client_token string, notification messaging.Notification) (string, error) {
	message := &messaging.Message{
		Data: map[string]string{
			"SHEEESH": "DAMMM",
		},
		Notification: &notification,
		//Topic: "topics-all",
		Token: client_token,
	}

	return sendToMessageToClient(app, message)
}

func sendNotificationToTopic(app *firebase.App, topic string, notification messaging.Notification) (string, error) {
	message := &messaging.Message{
		Data: map[string]string{
			"SHEEESH": "DAMMM",
		},
		Notification: &notification,
		Topic:        topic,
	}

	return sendToMessageToClient(app, message)
}

func sendToMessageToClient(app *firebase.App, message *messaging.Message) (string, error) {
	// Obtain a messaging.Client from the App.
	ctx := context.Background()
	client, err := app.Messaging(ctx)
	if err != nil {
		log.Fatalf("error getting Messaging client: %v\n", err)
	}

	// Send a message to the device corresponding to the provided
	// registration token.
	response, err := client.Send(ctx, message)
	if err != nil {
		log.Fatalln(err)
	}
	// Response is a message ID string.
	fmt.Println("Successfully sent message:", response)

	return response, err
}
