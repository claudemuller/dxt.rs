---
id: index
aliases: []
tags:
    - complexity
    - recursion
    - algorithms
    - go
    - rust
    - javascript
    - typescript
    - c
author: lukefilewalker
categories:
    - programming
date: 2026-02-05T30:00:00+02:00
draft: false
featured: false
showtoc: false
summary: What is recursion? How does it work?
title: Recursion
---

## What is recursion?

Recursion is an algorithm that calls itself on an ever reducing/simplifying version of itself/its dataset.

At its core, a recursive algorithm consists of:

- the base case (the exit condition)
- recursive case (the condition that keeps simplifying the dataset)

## Example

Counting down from n while reducing n on each recursive call.

```
start = 10
countDown = func(n) {
    // If we've reached our target n, exit i.e. the base case
    if n < 0 {
        return
    }
    println(n)

    // Reduce/simplify the dataset i.e. the recursive case
    countDown(n-1)
}
countDown(10)
```

And in Go:

```go
package main

func main() {
	var countDown func(i int)
	countDown = func(i int) {
		// If we've reached our target n, exit i.e. the base case
		if i < 0 {
			return
		}

		println(i)

		// Reduce/simplify the dataset i.e. the recursive case
		countDown(i - 1)
	}
	countDown(10)
}

/*
10
9
8
7
6
5
4
3
2
1
0
*/
```
