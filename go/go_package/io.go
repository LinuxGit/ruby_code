package main

import (
	"io"
	"log"
	"os"
	"strings"
)

func main() {
	io.WriteString(os.Stdout, "Hello, World!\n")

	r := strings.NewReader("Some io.reader stream to be read.\n")
	if _, err := io.Copy(os.Stdout, r); err != nil {
		log.Fatalln(err)
	}
}
