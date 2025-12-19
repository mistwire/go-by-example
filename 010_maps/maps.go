package main

import (
	"fmt"
)

func main() {
	m := make(map[string]int)

	m["key 1"] = 7
	m["key 2"] = 13

	fmt.Println("map:", m)

	v1 := m["key 1"]
	fmt.Println("v1:", v1)

	v3 := m["key 3"]
	fmt.Println("v3:", v3)

	fmt.Println("len:", len(m))

	delete(m, "key 17")
	fmt.Println("map:", m)

	delete(m, "key 2")
	fmt.Println("map:", m)

	clear(m)
	fmt.Println("map:", m)

	_, prs := m["key 2"]
	fmt.Println("prs:", prs)
}
