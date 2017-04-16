package main

import (
	"fmt"
)

func main() {
	// xc := make([]int, 10)
	var xc []int
	for i := 0; i < 10; i++ {
		xc = append(xc, i)
	}
	fmt.Println(xc)
}
