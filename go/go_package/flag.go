package main

import (
	"flag"
	"fmt"
	"strconv"
)

const APP_VERSION = "0.1"

type percentage float32

func (p *percentage) String() string {
	return fmt.Sprintf("%f", *p)
}

func (p *percentage) Set(s string) error {
	v, err := strconv.ParseFloat(s, 32)
	if err != nil {
		return err
	}
	*p = percentage(v)
	return nil
}

func main() {
	// *T
	namePtr := flag.String("name", "Louis", "user's name")
	agePtr := flag.Int("age", 22, "user's age")
	vipPtr := flag.Bool("vip", true, "is a vip user")

	var email string
	flag.StringVar(&email, "email", "louis@linuxgit.org", "user's email")

	var pop percentage
	flag.Var(&pop, "pop", "popularity")

	flag.Parse()
	others := flag.Args()

	if *vipPtr {
		fmt.Println("Version:", APP_VERSION)
	}

	fmt.Println("name: ", *namePtr)
	fmt.Println("age: ", *agePtr)
	fmt.Println("VIP: ", *vipPtr)
	fmt.Println("email: ", email)
	fmt.Println("pop: ", pop)
	fmt.Println("others: ", others)

}
