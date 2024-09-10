package main

import "fmt"
import "C"

//export HelloWorld
func HelloWorld() {
	fmt.Println("Hello World from Go!")

}

func main() {}
