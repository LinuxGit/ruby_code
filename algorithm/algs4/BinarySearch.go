// $ java-algs4 edu.princeton.cs.algs4.BinarySearch tinyW.txt < tinyT.txt
// 50
// 99
// 13
// $ java-algs4 edu.princeton.cs.algs4.BinarySearch largeW.txt < largeT.txt | wc -l
//   367966
//
// $ go run BinarySearch.go tinyW.txt < tinyT.txt
// 50
// 99
// 13
// $ go run BinarySearch.go largeW.txt < largeT.txt | wc -l
//   367966

package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func indexOf(ary []int, key int) int {
	var lo int = 0
	var hi int = len(ary) - 1
	for lo <= hi {
		mid := lo + (hi-lo)/2
		if key < ary[mid] {
			hi = mid - 1
		} else if ary[mid] < key {
			lo = mid + 1
		} else {
			return mid
		}
	}

	return -1
}

func whiteList() []int {
	file, _ := os.Open(os.Args[1])
	defer file.Close()

	scanner := bufio.NewScanner(file)
	var whitelist []int

	for scanner.Scan() {
		digit, _ := strconv.Atoi(strings.TrimSpace(scanner.Text()))
		whitelist = append(whitelist, digit)
	}

	sort.Ints(whitelist)

	return whitelist
}

func main() {
	whitelist := whiteList()

	scanner := bufio.NewScanner(os.Stdin)

	for scanner.Scan() {
		key, _ := strconv.Atoi(strings.TrimSpace(scanner.Text()))
		if indexOf(whitelist, key) == -1 {
			fmt.Println(key)
		}
	}
}
