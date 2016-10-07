package main

import (
	"bytes"
	"fmt"

	un "github.com/tobyhede/go-underscore"
)

func main() {

	var Each func(func(value interface{}, i interface{}), interface{})

	var buffer bytes.Buffer

	fn := func(s, i interface{}) {
		buffer.WriteString(s.(string))
	}

	s := []string{"a", "b", "c", "d", "e"}
	Each(fn, s)

	expect := "abcde"

	e := un.Each(fn, s)

	fmt.Printf("%#v\n", e) //"abcde"
}
