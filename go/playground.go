package main

import (
	"fmt"
	"log"
	"net/url"
)

func main() {
	u, err := url.Parse("http://s_dev_01:9090/")
	if err != nil {
		log.Fatal(err)
	}
	fmt.Println(u.Host)
}
