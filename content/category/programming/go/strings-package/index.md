---
id: index
aliases: []
tags:
  - code
  - go
  - strings
  - pkg
  - programming
  - standard-lib
author: lukefilewalker
categories:
  - programming
  - go
date: 2025-08-09T08:36:00+02:00
draft: false
showtoc: true
summary: The strings package from the standard library provides a handful of useful utilities to deal with UTF-8 encoded strings
title: The Strings Package
---
The strings package is a standard library package provided by the Go development team and offers a handful of useful utilities to deal with UTF-8 encoded strings. It can be found at [https://pkg.go.dev/strings](https://pkg.go.dev/strings).

# [`Clone(s string) string`](https://pkg.go.dev/strings#Clone)

`Clone` makes a copy of `s` by allocating a new block of memory and copying the original data over. 

A common mistake is to simply do:

```go
s := "my string"
scopy := s
```

But, because `s` is a 2-byte header variable with the first word pointing to the actual location of the string data in memory and the second specifying the length, the above code copies the header variable resulting in both still pointing to the same backing array. These header variables are used to limit the amount of wasted memory when passing around "copies" of strings. This makes taking slices of strings efficient as well as they simply point to a portion of the string's backing array.

```go
s := "my string"
// s's header variabl looks like
//  ---------------------------------------------------------
// | 0x00001 | address to the beginning of the backing array |
//  --------|------------------------------------------------
// |    9   | length of the string                          |
//  --------------------------------------------------------

s := ss[3:]
// ss's header variabl looks like
//  ---------------------------------------------------------
// | 0x00004 | address to the beginning of the backing array |
//  --------|------------------------------------------------
// |    6   | length of the string                          |
//  --------------------------------------------------------
```

If the input string `s` is empty, an empty string will be returned with no allocation being made.

```go
package main

import "strings"

func main() {
    fmt.Printf("A string\n")
	s := "Hello there"
	sptr := (*[2]uintptr)(unsafe.Pointer(&s))[0]
	fmt.Printf("The string 's' ('%s') starts at memory address: %p\n", s, unsafe.Pointer(sptr))
    fmt.Print("---\n\n")

	fmt.Printf("A copy of the string header var\n")
	s2 := s
	s2ptr := (*[2]uintptr)(unsafe.Pointer(&s2))[0]
	fmt.Printf("The string 's2' ('%s') starts at memory address: %p\n", s2, unsafe.Pointer(s2ptr))
    fmt.Print("---\n\n")

	fmt.Printf("A string slice\n")
	ss := s[5:]
	ssptr := (*[2]uintptr)(unsafe.Pointer(&ss))[0]
	fmt.Printf("The string 'ss' ('%s') starts at memory address: %p\n", ss, unsafe.Pointer(ssptr))
	fmt.Printf("Here the slice starts 5 bytes into the original string, so %p + 5 bytes = %p\n", unsafe.Pointer(sptr), unsafe.Pointer(ssptr))
    fmt.Print("---\n\n")

	fmt.Printf("A clone of a string\n")
	sclone := strings.Clone(s)
	scloneptr := (*[2]uintptr)(unsafe.Pointer(&s))[0]
	fmt.Printf("The cloned string 'sclone' ('%s') starts at memory address: %p\n", sclone, unsafe.Pointer(scloneptr))
    fmt.Print("---\n\n")

    /* The output

    A string
    The string 's' ('Hello there') starts at memory address: 0x4b67ea
    ---

    A copy of the string header var
    The string 's2' ('Hello there') starts at memory address: 0x4b67ea
    ---

    A string slice
    The string 'ss' (' there') starts at memory address: 0x4b67ef
    Here the slice starts 5 bytes into the original string, so 0x4b67ea + 5 bytes = 0x4b67ef
    ---

    A clone of a string
    The cloned string 'sclone' ('Hello there') starts at memory address: 0x4b67ea
    ---

    */
}
```

[Run code in the Go Playground](https://go.dev/play/p/Det03ndNvbV)

