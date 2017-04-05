package main

import (
	"fmt"
)

func max(numbers ...int) int {
	largest := numbers[0]
	for _, v := range numbers {
		if v > largest {
			largest = v
		}
	}
	return largest
}

func main() {
	// n := max(-2, -3, -1, -9)
	// fmt.Println(n)
	n := []int{-2, -3, -1, -9}
	fmt.Println(max(n...))
}
