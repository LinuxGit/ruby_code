// When importing a package, you can refer only to its exported names. Any "unexported" names are not accessible from outside the package.
package main

import (
	"fmt"
	"math"
)

func main() {
	fmt.Println(math.Pi)
}
