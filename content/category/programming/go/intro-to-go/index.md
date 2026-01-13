---
id: index
aliases: []
tags:
  - code
  - go
  - programming
author: lukefilewalker
categories:
  - programming
  - go
date: 2025-08-24T09:20:00+02:00
draft: true
showtoc: true
summary: A practical introduction to Go
title: Intro to Go
---
## What is Go?

## What is Go Good For?

"War! Huh!"? ... Maybe 😅

## Program Structure

The entry point of an Go program is the `main` function within a `main` package.

```go
package main

func main() {
    println("Hello, World!")
}
```

## Running a Go Program

Go has a fully featured TOOL used that can compile and run Go code.

```bash
go run main.go
```

Or you can build a binary and run that.

```bash
go build main.go [-o <name>]
./<name>
```

## Variables

Go is a strictly type language. It has the following types:

| Name | Type | Size | Notes | Example |
|---|---|---|---|---|
| `bool` | builtin type | 1B | | `true` |
| `byte` | builtin type | 1B | Alias for `uint8` | `A` |
| `int` | builtin type | 8B (on 64bit) | Depends on system architecture's word size | `6` |
| `int8` | builtin type | 1B | -128 to 127 | `-13` |
| `int16` | builtin type | 2B | -32 768 to 32 767 | `883` |
| `int32` | builtin type | 4B | -2 147 483 648 to 2 147 483 647 | `-98734` |
| `int64` | builtin type | 8B | -9 223 372 036 854 775 808 to 9 223 372 036 854 775 807 | `-8739874616366` |
| `uint` | builtin type | 8B (on 64bit) | Depends on system architecture's word size | `6` |
| `uint8` | builtin type | 1B | 0 to 255 | `6` |
| `uint16` | builtin type | 2B | 0 to 65 535 | `603` |
| `uint32` | builtin type | 4B | 0 to 4 294 967 295 | `873642` |
| `uint64` | builtin type | 8B | 0 to 18 446 744 073 709 551 615 | `8739874616366` |
| `float32` | builtin type | 4B | $~-3.4028235 × 10^{38}$ to $~3.4028235 × 10^{38}$ | `6.53` |
| `float64` | builtin type | 8B | $~-1.7976931348623157 × 10^{32}$ to $~1.7976931348623157 × 10^{30}$ | `6.718281828459045` |
| `uintptr` | builtin type | 8B (on 64bit) | Depends on system architecture's word size | `uintptr(0xdeadbeef)` |
| `rune` | builtin type | 4B | Alias for `int32`; unicode?? | `c` |
| `complex64` | builtin type | 8B | | `complex64(1 + 2i)` |
| `complex128` | builtin type | 16B | | `complex64(3 + 4i)` |
| `string` | builtin type | 16B + len(data) | | `"hello"` |
| `struct{}` | builtin type | 0B | | `chan struct{}` |
| `array` | reference type | elementSize * arrayLength | | `[3]{0, 1, 2}` |
| `slice` | reference type | 24B + len(cap) * elementSize | | `[]int{0, 1, 2}` |
| `map` | reference type | ~8B + overhead per bucket | | `map[int]int{ 1: 66, 2: 22}` |
| `channel` | reference type | 8B + runtime overhead | | `make(chan string)` |
| `function` | reference type | 8B + runtime closure data | | `func do(a string) error {}` |
| `interface{}` | reference type | 16B (type word + data word) | | `var i interface{} = 83` |
| `pointer` | reference type | 8B | | `var p *int = &i` |
| `struct` | user-defined type | sum of field sizes + padding | | `Person{ name: "Joe" }` |

There are a few ways to create and initialise variables.

Using the `var` keyword in a more long-form way where you are explicit about the type of the variable.

```go
var name string = "piet"
```

Using the `var` keyword in a shorter way, relying on on Go's type inference where the compiler infers the type based on the value the variable is initialised with.

```go
var name = "piet"
```

Or with the so-called "short variable declaration operator".

```go
name := "piet"
```

You can initialise more than one variable at a time.

```go
var a, b = 1, 2
c, d := 3, 4
```

## Constants

## Conditional Flow

### `if`

### `switch`

## Loops

### `for`

Looping a number of times while controlling the counter as well as the exit condition.

```go
for i := 0; i < 10; i++ {
    println(i)
}

Iterating over a collection while having access to the current index.

```

```go
for i := range names {
    println(names[i])
}
```

Iterating over a collection while having access to the current index as well as a copy of the element at that index.

```go
for i, name := range names {
    println(name)
}
```

Shorthand for looping a number of times.

```go
for range 10 {
    println("hello")
}
```

Looping a number times while having access to the counter.

```go
for i := range 10 {
    println(i)
}
```

Looping while having the exit condition within the body of the loop.

```go
for {
    println(i)
    i++
    
    if i == 10 {
        break
    }
}
```

### `while`

Go does not have the `while` keyword but it does conceptually support the while loop with a variation of the `for`.

```go
for i < 10 {
    i++
}
```

## Project Structure

```bash
kewl-project
|___api
|   |___v1
|
|___cmd
|   |___main.go
|
|___pkg
|   |___kewl-pkg
|
|___internal
    |___app
    |   |___search
    |
    |___pkg
        |___storage
```

