package main

import (
	"bufio"
	"fmt"
	"strings"
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

func IsBalanced(s string) bool {
	stack := new(Stack)
	scanner := bufio.NewScanner(strings.NewReader(s))
	scanner.Split(bufio.ScanRunes)
	for scanner.Scan() {
		item := scanner.Text()
		if item == "(" || item == "[" || item == "{" {
			stack.Push(item)
		} else {
			if stack.IsEmpty() {
				return false
			}
			if item == ")" {
				if stack.Pop() != "(" {
					return false
				}
			}
			if item == "]" {
				if stack.Pop() != "[" {
					return false
				}
			}
			if item == "}" {
				if stack.Pop() != "{" {
					return false
				}
			}
		}
	}
	return stack.IsEmpty()

}

func main() {
	s1 := "[()]{}{[()()]()}"
	fmt.Println(IsBalanced(s1))

	s2 := "[(])"
	fmt.Println(IsBalanced(s2))
}
