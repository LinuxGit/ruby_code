package main

import "fmt"

func main() {
	var a [2]string
	a[0] = "Hello"
	a[1] = "World"
	fmt.Println(a[0], a[1])
	fmt.Println(a)

	primes := [5]int{2, 9, 7, 8, 3}
	fmt.Println(primes)

	primes[0] = 999
	fmt.Println(primes)

	var arr [5]int
	fmt.Println(arr)

	var twoD [2][3]int
	for i := 0; i < 2; i++ {
		for j := 0; j < 3; j++ {
			twoD[i][j] = i * j
		}
	}
	fmt.Println(twoD)

	array := [...]int{10, 20, 30, 40, 50}
	fmt.Println(array[1])

	array2 := [5]int{1: 20, 2: 30}
	fmt.Println(array2[2])
}
