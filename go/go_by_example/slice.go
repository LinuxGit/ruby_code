package main

import "fmt"

func printSlice(s []int) {
	fmt.Printf("len=%d, cap=%d, %v\n", len(s), cap(s), s)
}

func main() {
	s := []int{2, 3, 5, 7, 9, 11}

	s = s[1:4]
	printSlice(s)

	s = s[:2]
	printSlice(s)

	s = s[1:]
	printSlice(s)

	var s2 []int
	if s2 == nil {
		fmt.Println("nil!")
	}

	s3 := make([]string, 3)
	fmt.Println("examle:", s3)

	s3[0] = "a"
	s3[1] = "b"
	s3[2] = "c"
	fmt.Println("set:", s3)

	s3 = append(s3, "d", "e", "f")
	fmt.Println("append:", s3)

	c := make([]string, len(s3))
	copy(c, s3)
	fmt.Println(c)
}
