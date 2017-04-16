package main

import (
	// "encoding/json"
	"fmt"
	"io/ioutil"
	"log"
	"net/http"
)

func main() {
	res, err := http.Get("http://182.61.43.63/v1/restserver/ting?method=baidu.ting.billboard.billList&format=jsonp&type=1&size=20&from=mixapp")
	if err != nil {
		log.Fatal(err)
	}
	bs, _ := ioutil.ReadAll(res.Body)
	defer res.Body.Close()
	fmt.Printf("%s", bs)

}
