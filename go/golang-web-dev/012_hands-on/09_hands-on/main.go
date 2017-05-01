package main

import (
	"encoding/csv"
	"io"
	"log"
	"os"
	"strconv"
	"text/template"
	"time"
)

var tpl *template.Template

func init() {
	tpl = template.Must(template.ParseFiles("tpl.gohtml"))
}

type Record struct {
	Date time.Time
	Open float64
}

type records []Record

var items records

func main() {
	f, err := os.Open("table.csv")
	if err != nil {
		log.Fatalln(err)
	}
	defer f.Close()

	r := csv.NewReader(f)

	for {
		row, err := r.Read()
		if err == io.EOF {
			break
		}
		if err != nil {
			log.Fatal(err)
		}

		date, _ := time.Parse("2006-01-02", row[0])
		open, _ := strconv.ParseFloat(row[1], 64)

		items = append(items, Record{
			Date: date,
			Open: open,
		})

	}

	err = tpl.Execute(os.Stdout, items)
	if err != nil {
		log.Fatalln(err)
	}
}
