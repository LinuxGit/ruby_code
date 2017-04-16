package main

import (
	"encoding/json"
	"fmt"
	"log"
)

type Message struct {
	Name string
	Body string
	Time int64
}

func main() {
	m := Message{"Alice", "Hello", 1294706395881547000}
	b, err := json.Marshal(m)
	if err != nil {
		log.Println(err)
	} else {
		fmt.Println(string(b))
	}

	b2 := []byte(`{"Name":"Louis","Body":"World","Time":1294706395881547001}`)
	var m2 Message
	if err := json.Unmarshal(b2, &m2); err != nil {
		log.Println(err)
	} else {
		fmt.Println(m2)
	}

}
