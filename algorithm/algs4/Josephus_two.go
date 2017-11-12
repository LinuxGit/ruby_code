// $ go run Josephus_two.go 2 7
// 1 3 5 0 4 2 6
// https://algs4.cs.princeton.edu/13stacks/Josephus.java.html

package main

import (
	"fmt"
	"os"
	"strconv"
)

type Ring struct {
	value interface{}
	next  *Ring
}

func (r *Ring) init() *Ring {
	r.next = r
	return r
}

func (r *Ring) Next() *Ring {
	if r.next == nil {
		return r.init()
	}
	return r.next
}

func New(n int) *Ring {
	if n <= 0 {
		return nil
	}
	r := new(Ring)
	p := r
	for i := 1; i < n; i++ {
		p.next = &Ring{}
		p = p.next
	}
	p.next = r
	return r
}

func (r *Ring) Len() int {
	n := 0
	if r != nil {
		n = 1
		for p := r.next; p != r; p = p.next {
			n++
		}
	}
	return n
}

func main() {
	if len(os.Args) != 3 {
		fmt.Println("ERR: two arguments needed.")
		os.Exit(1)
	}
	n, _ := strconv.Atoi(os.Args[2])
	m, _ := strconv.Atoi(os.Args[1])
	r := New(n)
	for i := 0; i < r.Len(); i++ {
		r.value = i
		r = r.Next()
	}
	for r.Next() != r {
		for i := 1; i < m-1; i++ {
			r = r.Next()
		}
		p := r
		d := r.next
		p.next = d.next
		fmt.Print(d.value)
		fmt.Print(" ")
		r = d.next
	}
	fmt.Print(r.value)
	fmt.Println("")
}
