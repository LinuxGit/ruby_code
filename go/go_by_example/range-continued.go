package main

import "fmt"

func main() {
	pow := make([]int, 10)
	for i := range pow {
		pow[i] = 1 << uint(i)
	}

	for _, value := range pow {
		fmt.Printf("%d\n", value)
	}

	for i, c := range "go" {
		fmt.Println(i, c)
	}

	fruit := map[string]string{"a": "apple", "b": "banana"}
	for k, v := range fruit {
		fmt.Printf("%s -> %s\n", k, v)
	}
}
