// $ go run Josephus.go 2 7
// 1 3 5 0 4 2 6
// https://algs4.cs.princeton.edu/13stacks/Josephus.java.html

package main

import (
	"fmt"
	"os"
	"strconv"
)

type Element struct {
	next, prev *Element
	queue      *Queue
	Value      interface{}
}

type Queue struct {
	root Element
	len  int
}

func (q *Queue) Init() *Queue {
	q.root.next = &q.root
	q.root.prev = &q.root
	q.len = 0
	return q
}

func (q *Queue) lazyInit() {
	if q.root.next == nil {
		q.Init()
	}
}

func New() *Queue { return new(Queue).Init() }

func (q *Queue) IsEmpty() bool {
	return q.len == 0
}

func (q *Queue) Enqueue(v interface{}) {
	q.lazyInit()
	e := &Element{Value: v}
	at := q.root.prev
	n := at.next
	at.next = e
	e.prev = at
	e.next = n
	n.prev = e
	e.queue = q
	q.len++
}

func (q *Queue) Dequeue() interface{} {
	if q.len == 0 {
		return nil
	}
	e := q.root.next
	e.prev.next = e.next
	e.next.prev = e.prev
	e.next = nil
	e.prev = nil
	e.queue = nil
	q.len--
	return e.Value
}

func main() {
	if len(os.Args) != 3 {
		fmt.Println("ERR: two arguments needed.")
		os.Exit(1)
	}
	n, _ := strconv.Atoi(os.Args[2])
	m, _ := strconv.Atoi(os.Args[1])
	q := New()
	for i := 0; i < n; i++ {
		q.Enqueue(i)
	}
	for !q.IsEmpty() {
		for i := 0; i < m-1; i++ {
			q.Enqueue(q.Dequeue())
		}
		fmt.Print(q.Dequeue())
		fmt.Print(" ")
	}
	fmt.Println("")
}
