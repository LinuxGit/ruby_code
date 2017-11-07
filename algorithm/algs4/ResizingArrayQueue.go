// $ echo "to be or not to - be - - that - - - is" | go run ResizingArrayQueue.go
// to be or not to be (2 left on queue)
// https://algs4.cs.princeton.edu/13stacks/ResizingArrayQueue.java.html

package main

import (
	"bufio"
	"errors"
	"fmt"
	"os"
)

type ResizingArrayQueue struct {
	a     []string
	n     int
	first int
	last  int
}

func (q *ResizingArrayQueue) isEmpty() bool {
	return q.n == 0
}

func (q *ResizingArrayQueue) Size() int {
	return q.n
}

func (q *ResizingArrayQueue) resize(capacity int) error {
	if capacity < q.n {
		err := errors.New("Capacity is smaller than current queue's length.")
		return err
	}
	temp := make([]string, capacity)
	for i := 0; i < q.n; i++ {
		temp[i] = q.a[(q.first+i)%len(q.a)]
	}
	q.a = temp
	q.first = 0
	q.last = q.n
	return nil
}

func (q *ResizingArrayQueue) enqueue(item string) {
	if q.n == len(q.a) {
		q.resize(2 * len(q.a))
	}
	q.a[q.last] = item
	q.last += 1
	if q.last == len(q.a) {
		q.last = 0
	}
	q.n += 1
}

func (q *ResizingArrayQueue) dequeue() (string, error) {
	if q.isEmpty() {
		err := errors.New("Queue is empty.")
		return "", err
	}
	var item string = q.a[q.first]
	q.a[q.first] = ""
	q.n--
	q.first++
	if q.first == len(q.a) {
		q.first = 0
	}
	if q.n > 0 && q.n == len(q.a)/4 {
		q.resize(len(q.a) / 2)
	}
	return item, nil
}

func main() {
	q := new(ResizingArrayQueue)
	a := make([]string, 2)
	q.a = a
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	for scanner.Scan() {
		item := scanner.Text()
		if item != "-" {
			q.enqueue(item)
		} else {
			str, err := q.dequeue()
			if err == nil {
				fmt.Printf("%s %s", str, "")
			}
		}
	}
	fmt.Printf("%s%d %s", "(", q.Size(), "left on queue)\n")
}
