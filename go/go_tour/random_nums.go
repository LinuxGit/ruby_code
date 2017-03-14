package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	rand.Seed(time.Now().UnixNano())
	for i := 0; i < 10; i++ {
		x := rand.Intn(1000)
		fmt.Println(x)
	}

	// fmt.Println(time.Now().Unix())
	// fmt.Println(time.Now().UnixNano())
}
