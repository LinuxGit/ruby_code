package main

import (
	"fmt"
	"math/rand"
	"time"
)

var letters = []byte("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")

// Gnerate a random string of alphabetic characters.
func randString(length int, r *rand.Rand) string {
	str := make([]byte, length)
	for i := range str {
		str[i] = letters[r.Intn(len(letters))]
	}
	return string(str)
}

func main() {
	source := rand.NewSource(int64(time.Now().UnixNano()))
	r := rand.New(source)
	fmt.Println(randString(20, r))
}
