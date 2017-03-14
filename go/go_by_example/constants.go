package main

import (
	"fmt"
	"math"
)

const lang string = "ruby"

func main() {
	fmt.Println(lang)

	const n = 365
	fmt.Println(math.Sin(n))
}
