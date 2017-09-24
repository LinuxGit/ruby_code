package main

import (
	"fmt"
	"strings"
)

func main() {
	fmt.Println(" Ruby")
	fmt.Println(strings.ToUpper("Ruby"))
	fmt.Println(strings.TrimSpace(" Ruby "))

	fmt.Println(strings.Fields(" ruby china "))

	a := []string{"a", "b", "c"}
	fmt.Println(strings.Join(a, " "))
}
