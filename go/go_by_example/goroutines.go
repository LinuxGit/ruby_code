package main

import (
	"fmt"
	"time"
)

func say(s string) {
	for i := 0; i < 5; i++ {
		time.Sleep(100 * time.Millisecond)
		// time.Sleep(3 * time.Second)
		fmt.Println(s)
	}
}

func main() {
	go say("hello")
	say("world")

	var input string
	fmt.Scanln(&input)

	//Anonymous function
	func(msg string) {
		fmt.Println(msg)
	}("going")
}
