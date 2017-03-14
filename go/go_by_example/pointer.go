package main

import "fmt"

func zeroval(ival int) {
	ival = 0
}

func zeroptr(iptr *int) {
	*iptr = 0
}

func main() {
	i, j := 9, 51

	// The & operator generates a pointer to its operand
	p := &i
	fmt.Println(*p)
	fmt.Println(p)

	// The *iptr code in the function body then dereferences the pointer from its memory address to the current value at that address.
	*p = 21
	fmt.Println(i)

	p = &j
	*p = *p - 1
	fmt.Println(j)

	zeroval(i)
	fmt.Println(i)

	// The &i syntax gives the memory address of i,
	zeroptr(&j)
	fmt.Println(j)
}
