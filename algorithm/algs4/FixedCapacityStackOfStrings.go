package main

import (
	"bufio"
	"errors"
	"fmt"
	"os"
)

type FixedCapacityStackOfStrings struct {
	a [5]string
	N int
}

func (s *FixedCapacityStackOfStrings) isEmpty() bool {
	return s.N == 0
}

func (s *FixedCapacityStackOfStrings) isFull() bool {
	return s.N == len(s.a)
}

func (s *FixedCapacityStackOfStrings) push(item string) error {
	if s.isFull() {
		err := errors.New("Stack is full")
		return err
	}
	s.a[s.N] = item
	s.N += 1
	return nil
}

func (s *FixedCapacityStackOfStrings) pop() (string, error) {
	if s.isEmpty() {
		err := errors.New("Stack is empty")
		return "", err
	}
	s.N -= 1
	item := s.a[s.N]
	return item, nil
}

func (s *FixedCapacityStackOfStrings) peek() (string, error) {
	if s.isEmpty() {
		err := errors.New("Stack is empty")
		return "", err
	}
	return s.a[s.N-1], nil
}

func (s *FixedCapacityStackOfStrings) toString() string {
	var st string
	for _, v := range s.a {
		st += v
		st += " "
	}
	return st
}

func main() {
	stack := new(FixedCapacityStackOfStrings)
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	for scanner.Scan() {
		item := scanner.Text()
		if item != "-" {
			stack.push(item)
		} else if stack.isEmpty() {
			fmt.Println("BAD INPUT")
		} else {
			value, err := stack.pop()
			if err == nil {
				fmt.Print(value + " ")
			}
		}
	}
	fmt.Println("\n")
}
