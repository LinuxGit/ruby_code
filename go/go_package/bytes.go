package main

import (
	"bytes"
	"fmt"
)

func main() {
	var buffer bytes.Buffer
	buffer.WriteString("Hello, World!")
	buffer.WriteByte('\t')
	fmt.Println(buffer.Bytes())
	fmt.Println(buffer.String())
}
