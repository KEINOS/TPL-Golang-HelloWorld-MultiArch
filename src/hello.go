package main

import (
	"fmt"
)

func main() {
	fmt.Printf(sayHello() + "\n")
}

func sayHello() string {
	return "Hello, world!"
}
