package main

import (
	"encoding/json"
	"fmt"
)

type people struct {
	Name  string
	Craft string
}

type box struct {
	People []people `json:"people"`
}

func main() {
	text := `{"people": [{"craft": "ISS", "name": "Sergey Rizhikov"}, {"craft": "ISS", "name": "Andrey Borisenko"}, {"craft": "ISS", "name": "Shane Kimbrough"}, {"craft": "ISS", "name": "Oleg Novitskiy"}, {"craft": "ISS", "name": "Thomas Pesquet"}, {"craft": "ISS", "name": "Peggy Whitson"}], "message": "success", "number": 6}`
	textBytes := []byte(text)

	box1 := box{}
	err := json.Unmarshal(textBytes, &box1)
	if err != nil {
		fmt.Println(err)
		return
	}

	for _, person := range box1.People {
		fmt.Println(person.Name, person.Craft)
	}

}
