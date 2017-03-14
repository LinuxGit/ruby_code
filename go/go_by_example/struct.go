package main

import "fmt"

type Vertex struct {
	X, Y int
}

type person struct {
	name string
	age  int
}

var (
	v  = Vertex{1, 2}
	v2 = Vertex{}
	v3 = Vertex{X: 1}
	p2 = &Vertex{1, 2}
)

func main() {
	v.X = 4
	fmt.Println(v.X)

	p := &v
	p.Y = 9
	fmt.Println(v)

	fmt.Println(v2, v3, p2)

	s := person{name: "Louis", age: 27}
	s.name = "Ruby"
	fmt.Println(s)
}
