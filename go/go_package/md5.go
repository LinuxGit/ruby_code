package main

import (
	"crypto/md5"
	"fmt"
)

func main() {
	data := []byte("TiDB is a distributed SQL database.")
	fmt.Printf("%x", md5.Sum(data))
}
