package main

import (
	"fmt"
)

func main() {
	nums := []int{2, 3, 3, 7, 9, 11}
	m := map[int]struct{}{}

	for _, v := range nums {
		if _, ok := m[v]; !ok {
			m[v] = struct{}{}
		}
	}

	list := make([]int, len(m))

	i := 0
	for k := range m {
		list[i] = k
		i++
	}
	fmt.Println(list)
}
