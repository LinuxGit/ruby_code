package main

import (
	"fmt"
	"strconv"
)

func main() {
	// Converting from an integer to its binary representation
	fmt.Println(strconv.FormatInt(8, 2))
	fmt.Printf("%b", 8)
}
