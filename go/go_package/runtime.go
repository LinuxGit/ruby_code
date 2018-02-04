package main

import (
	"fmt"
	"runtime"
)

func main() {
	fmt.Println(runtime.NumCPU())
	fmt.Println(runtime.GOOS)
	fmt.Println(runtime.GOROOT())
	fmt.Println(runtime.GOMAXPROCS(-1))
}
