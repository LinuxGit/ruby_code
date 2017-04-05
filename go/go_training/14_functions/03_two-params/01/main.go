package main

import "fmt"

func main() {
	greet("Louis", "Liu")
}

func greet(fname string, lname string) {
	fmt.Println(fname, lname)
}
