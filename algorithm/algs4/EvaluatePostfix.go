// $ go run EvaluatePostfix.go
// 7 16 * 5 + 16 * 3 + 16 * 1 +
// 30001
// $ go run EvaluatePostfix.go
// 7 16 16 16 * * * 5 16 16 * * 3 16 * 1 + + +
// 30001
// https://algs4.cs.princeton.edu/13stacks/EvaluatePostfix.java.html

package main

import (
	"bufio"
	"errors"
	"fmt"
	"os"
	"strconv"
)

type Node struct {
	item int
	next *Node
}

type Stack struct {
	first *Node
	size  int
}

func (s *Stack) Push(item int) {
	s.first = &Node{item, s.first}
	s.size++
}

func (s *Stack) Pop() (item int, err error) {
	if s.size > 0 {
		item, s.first = s.first.item, s.first.next
		s.size--
		return item, nil
	}
	err = errors.New("Stack is empty.")
	return 0, err
}

func main() {
	s := new(Stack)
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	for scanner.Scan() {
		item := scanner.Text()
		if item == " " {
			continue
		} else if item == "+" {
			e1, err1 := s.Pop()
			e2, err2 := s.Pop()
			if err1 == nil && err2 == nil {
				s.Push(e1 + e2)
			}
		} else if item == "*" {
			e1, err1 := s.Pop()
			e2, err2 := s.Pop()
			if err1 == nil && err2 == nil {
				s.Push(e1 * e2)
			}
		} else {
			digit, err := strconv.Atoi(item)
			if err == nil {
				s.Push(digit)
			}
		}
	}
	ret, err := s.Pop()
	if err == nil {
		fmt.Println(ret)
	}
}
