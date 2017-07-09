package main

import (
	"fmt"
)

func main() {
	ch := make(chan struct{}, 10)
	for i := 0; i < 5; i++ {
		ch <- struct{}{}
	}

	fmt.Println(len(ch))
}
