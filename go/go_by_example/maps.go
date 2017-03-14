package main

import "fmt"

func main() {
	m := make(map[string]string)

	m["lang"] = "Ruby"
	fmt.Println("The language:", m["lang"])

	fmt.Println(len(m))

	m["lang"] = "Go"
	fmt.Println("The language:", m["lang"])

	delete(m, "lang")

	_, ok := m["lang"]
	fmt.Println("Present?", ok)

	n := map[string]int{"a": 1, "b": 2}
	fmt.Println("map:", n)
}
