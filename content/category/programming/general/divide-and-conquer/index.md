---
id: index
aliases: []
tags:
    - recursion
    - algorithms
    - divide-and-conquer
    - go
    - rust
    - javascript
    - typescript
    - c
author: lukefilewalker
categories:
    - programming
date: 2026-03-09T02:35:00+01:00
draft: false
featured: false
showtoc: true
summary: What are Divide and Conquer algorithms? How do they work?
title: Divide and Conquer
---

## What is Divide and Conquer?

Divide and Conquer (D&C) is a well-known recursive technique for building algorithms. Essentially, D&C takes a problem and continually breaks it down into smaller pieces while applying the algorithm to each piece and combining the result into the final solution.

## A Visual Example

Let's divide a rectangle into the largest, equal squares possible.

![[./_resources/problem.svg]]

- the boxes are not _square_

![[./_resources/wrong-solution-1.svg]]

- the boxes are not _equally sized_

![[./_resources/wrong-solution-2.svg]]

- the boxes are not the _largest_ they can be

![[./_resources/wrong-solution-3.svg]]

### Enter D&C

There are two steps to using D&C to solve a problem and because it uses [recursion](/category/programming/general/recursion), the steps are the same:

1. Identify the base case - the simplest possible case
2. Decrease/divide the problem into smaller sets until you reach the base case

#### Step 1

In order for the square to be of a size that would fit in the larger rectangle cleanly, the square needs to have sides that are multiples of one of larger rectangle's sides - 400x240. This is the base case.

#### Step 2

- Find the largest square that can fit into the rectangle
- We're able to fit one 240x240 square into the larger rectangle
- Are one of the sides (240x240) of the remaining space a multiple of the one of the largest rectangle's sides? No
- Continue

![[./_resources/step-2.svg]]

#### Step 3

- We repeat the algorithm on the remaining set
- We're able to fit one 160x160 square into the remaining sub-rectangle
- Are one of the sides (160x160) of the remaining space a multiple of the one of the largest rectangle's sides? No
- Continue

![[./_resources/step-3.svg]]

#### Step 4

- We repeat the algorithm on the remaining set
- We're able to fit one 160x160 square into the remaining sub-rectangle
- Are one of the sides (160x80) of the remaining space a multiple of the one of the largest rectangle's sides? No
- Continue

![[./_resources/step-4.svg]]

#### Step 5

- We repeat the algorithm on the remaining set
- We're able to fit one 160x160 square into the remaining sub-rectangle
- Are one of the sides (160x80) of the remaining space a multiple of the one of the largest rectangle's sides? Yes!
- The largest square that we can use to totally cover a rectangle of 400x240 is one of 80x80

![[./_resources/solution.svg]]

## A Code Example

Let's sum an array of numbers - `[3, 9, 2, 7, 6, 5]`. Using a loop is pretty easy and straight forward:

```go
func main() {
    var sum int

    for _, n := range []int{3, 9, 2, 7, 6, 5} {
        sum += n
    }

    println("sum:", sum)
}
```

[Run in Go Playground](https://go.dev/play/p/DAVmywa8Ugz)

### Using Recursion

#### Step 1

Identify the base case. Seeing as how we're working with an array, what is the smallest array that you can have? If you said an array of either zero or one elements, congrats :)

#### Step 2

Identify/create the recursive case. We need to progressively reduce the problem set. One way to do that would be as follows:

![[./_resources/sum.svg]]

From the base case, we recursively sum the value from the previous `sum` function with the next value in the array.

#### The Code

```go
func main() {
	arr := []int{3, 9, 2, 7, 6, 5}

	var sum func(xs []int) int
	sum = func(xs []int) int {
		if len(xs) == 1 {
			return xs[0]
		}
		return xs[0] + sum(xs[1:])
	}

	println("sum:", sum(arr))
}
```

[Run in Go Playground](https://go.dev/play/p/II7IufcOnIE)

Fin.
