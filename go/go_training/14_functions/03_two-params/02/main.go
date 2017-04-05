package main

import "fmt"

func main() {
	greet("Louis", "Liu")
}

func greet(fname, lname string) {
	fmt.Println(fname, lname)
}
