---
title: Understanding Big-O
date: 2023-11-09T05:00:00+02:00
summary: What is Big-O even and why should we care?
author: lukefilewalker
categories:
  - programming
tags:
  - complexity
  - big-o
  - runtime
  - space-complexity
  - time-complexity
  - asymptotic-analysis
  - algorithms
showtoc: "false"
draft: "true"
---
With a bit of programming knowledge and experience, anyone could solve any problem. Solving it in the most optimal way however, is a different story altogether. Here, "most optimal" includes the how well the algorithm scales. Luckily there is a branch of computer science, called [asymptotic analysis](https://en.wikipedia.org/wiki/Asymptotic_analysis), that gives us a framework that we can use to measure the efficiency of our solutions i.e. our [algorithms](/category/programming/general/algorithms). Big-O is a mathematical notation used to describe an algorithm's complexity in both time and space.

"In both time and space" sounds like I'm writing a religious text or a comic book, but what this refers to really is how the algorithm under observation performs and scales with regards to its running time i.e. how many operations is it able to perform within its lifetime with different inputs. The "space" component refers to how much RAM/memory does the solution consume in its lifetime with different inputs.

You may have see it, but the looks something like *O(something)*. The "Big-O" in the name literally refers to the big "O" at the beginning 😅. The "something" represents the formula that tells you what the cost in complexity is of the algorithm. When you communicate or read this notation, you read it as "on the order of something operations for all possible inputs", or more simply, "order something". So for *O(1)* you would say "on the order of 1 operation for all possible inputs", or simply, "order 1".

The best SOMETHING you could hope for is order 1 - *O(1)* - otherwise known as **constant time**. Let's see what that means with an example. We'll use the same array of ten elements throughout the article make it easy to follow and correlate one THNIG to another.

We'll use JavaScript as the language to visualise examples in.

## Constant Time or, *O(1)*

If you have an array and know the position of the element you want to access, say the first element, you would simply access it using array indexing notation (remembering that arrays in JavaScript start at index **0**). Something like:

```js
const array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
const result = array[0]

// result is "1"
```

How complex was that operation? Not very complex I hear you say, but how could we express that in Big-O?

We could asks ourselves, **how many operations** did it take to find the result with this collection of **10 elements**? Only one operation - we jumped straight to the **first element**.

![constant-time](_resources/constant-time.svg)

How many operations would it take to find the result with this method if we had 10,000 elements? Or 1,000,000? Only **1 operation**, correct 😬 So, in fancy speak we would say - this algorithm is on the order of 1 operation for all possible inputs; or we could say that this algorithm is of order 1; or in Big-O notation *O(1)*; or more informally, this algorithm takes/executes/operates in constant time.

## Linear Time or, *O(n)*





