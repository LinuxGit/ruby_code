package main

import (
	"fmt"
	"math/rand"
	"sync"
	"sync/atomic"
	"time"
)

var hit int64
var wg sync.WaitGroup

func main() {
	wg.Add(2)
	go incrementor("foo")
	go incrementor("bar")
	wg.Wait()
	fmt.Println("Hit times:", hit)
}

func incrementor(s string) {
	rand.Seed(time.Now().UnixNano())
	for i := 0; i < 10; i++ {
		time.Sleep(time.Duration(rand.Intn(3)) * time.Millisecond)
		atomic.AddInt64(&hit, 2)
		fmt.Println(s, i, "Hit times:", atomic.LoadInt64(&hit))
	}
	wg.Done()
}
