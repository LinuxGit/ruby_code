package main

import "fmt"

var lang = "ruby"
var a, b int = 1, 2

func main() {
	// shorthand: can be only used inside function
	y := 2
	var m int
	fmt.Printf("I love %s for %d years.\n", lang, y)
	// Type inference
	fmt.Printf("y is of type %T.\n", y)
	fmt.Println(a, b)
	// zero value
	fmt.Println(m)
}
