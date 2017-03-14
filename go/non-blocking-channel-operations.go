package main

import "fmt"

func main() {
	messages := make(chan string, 1)

	// messages <- "ruby"

	select {
	case msg := <-messages:
		fmt.Println(msg)
	default:
		fmt.Println("no messages received.")
	}
}
