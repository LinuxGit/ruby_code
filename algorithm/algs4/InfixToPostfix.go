// $ go run InfixToPostfix.go
// ( 2 + ( ( 3 + 4 ) * ( 5 * 6 ) ) )
// 2 3 4 + 5 6 * * +
// https://algs4.cs.princeton.edu/13stacks/InfixToPostfix.java.html

package main

import (
	"bufio"
	"fmt"
	"os"
)

type Node struct {
	item string
	next *Node
}

type Stack struct {
	first *Node
	size  int
}

func (s *Stack) Push(item string) {
	s.first = &Node{item, s.first}
	s.size++
}

func (s *Stack) Pop() (item string) {
	if s.size > 0 {
		item, s.first = s.first.item, s.first.next
		s.size--
		return item
	}
	return ""
}

func (s *Stack) IsEmpty() bool {
	return s.first == nil
}

func (s *Stack) Len() int {
	return s.size
}

func main() {
	stack := new(Stack)
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanRunes)
	for scanner.Scan() {
		item := scanner.Text()
		if item == "(" || item == " " {
			continue
		} else if item == "+" || item == "*" {
			stack.Push(item)
		} else if item == ")" {
			fmt.Print(stack.Pop() + " ")
		} else {
			fmt.Print(item + " ")
		}
	}
	fmt.Println(stack.first)
}
