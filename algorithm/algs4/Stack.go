// $ java-algs4 edu.princeton.cs.algs4.Stack < tobe.txt
// to be not that or be (2 left on stack)
// $ go run Stack.go < tobe.txt
// to be not that or be (2 left on stack)

package main

import (
	"bufio"
	"errors"
	"fmt"
	"os"
)

type Node struct {
	item interface{}
	next *Node
}

type Stack struct {
	first *Node
	size  int
}

func (s *Stack) Push(item interface{}) {
	s.first = &Node{item, s.first}
	s.size++
}

func (s *Stack) Pop() (item interface{}) {
	if s.size > 0 {
		item, s.first = s.first.item, s.first.next
		s.size--
		return item
	}
	return nil
}

func (s *Stack) IsEmpty() bool {
	return s.first == nil
}

func (s *Stack) Len() int {
	return s.size
}

func (s *Stack) Peek() (item interface{}, err error) {
	if s.IsEmpty() {
		err = errors.New("Stack is empty.")
		return nil, err
	}
	return s.first.item, nil
}

func (s *Stack) ToString() string {
	var a string
	current := s.first
	for current != nil {
		a += current.item.(string)
		a += " "
		current = current.next
	}
	return a
}

func main() {
	stack := new(Stack)
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	for scanner.Scan() {
		item := scanner.Text()
		if item != "-" {
			stack.Push(item)
		} else if !stack.IsEmpty() {
			fmt.Printf("%s %s", stack.Pop(), "")
		}
	}
	fmt.Printf("%s%d %s", "(", stack.Len(), "left on stack)\n")
}
