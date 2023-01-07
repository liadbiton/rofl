package main

import (
	_ "github.com/lib/pq"
)

const ()

func main() {
}

func CheckError(err error) {
	if err != nil {
		panic(err)
	}
}
