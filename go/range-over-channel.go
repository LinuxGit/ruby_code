package main

import "fmt"

func main() {
	queue := make(chan string, 2)
	queue <- "one"
	queue <- "two"

	close(queue)

	for item := range queue {
		fmt.Println(item)
	}
}

// it’s possible to close a non-empty channel but still have the remaining values be received.
