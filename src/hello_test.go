package main

import (
	"testing"
)

func TestHello(t *testing.T) {
	actual := sayHello()
	expect := "Hello, world!"

	if actual != expect {
		t.Errorf("Expect: %q Actual: %q", expect, actual)
	}
}
