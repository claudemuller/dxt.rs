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

Go is a strictly type language. 

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

