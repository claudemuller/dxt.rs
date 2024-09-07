---
id: index
aliases: []
tags:
  - go
  - concurrency
  - channels
  - goroutines
author: lukefilewalker
categories:
  - programming
  - go
date: 2024-09-07T11:30:00+02:00
featured: true
math: true
showtoc: false
summary: Explore concurrency patterns in Go to improve your code
title: Concurrency Patterns in Go - a Series
---
Operating System (OS) threads are the smallest unit of execution in an OS that improve performance by providing tasks to be executed [concurrently¹](#footnotes) and/or in [parallel²](#footnotes) on Central Processing Unit (CPU) cores.

Goroutines are constructs in Go that mimic OS threads by providing concurrency with the possibility of parallelism, but with much less overhead.

When an OS thread moves from a [running⁵](#footnotes) to a [waiting³](#footnotes) state and there are other threads waiting to be run i.e. in a [runnable⁴](#footnotes) state, the OS parks the *waiting* thread and unparks one of the *runnable/ready* threads in a process called *context switching*. This process of moving a thread onto or off of a CPU core/hardware thread can take between 1 to 10 microseconds on a modern system, with a more typical range being between 1 and 2 microseconds (1000-2000 nanoseconds).

When an OS thread undergoes a *context switch* the OS must save things like register values, lookup tables, and memory maps to successfully be able to switch back to this thread when it is time.

Goroutines can be thought of as *application level threads* as they run on OS threads but are managed by the Go Scheduler which takes care of multiplexing then onto any number of OS threads. This means that when a goroutine moves to a *waiting* state, the *context switch* happens on the OS thread as opposed to on the hardware thread, leaving the OS thread in a *running* state. The *context switch* of a goroutine can occur in the region of 50-200 nanoseconds, roughly an order of magnitude less than OS thread context switches.

# Concurrency Patterns

<!-- https://freedium.cfd/https://levelup.gitconnected.com/concurrency-design-patterns-in-golang-f0843f570689 -->

- `waitForResult`
- `fanOut`
- `fanIn`
- `waitForTask`
- `pooling`
- `fanOutSemaphore`
- `fanOutBounded`
- `drop` (circuit breaker/rate limiting)
- `cancellation`

---

### Footnotes

1. concurrency - tasks that are executed out of order giving the impression of parallelism
2. parallel execution - tasks that are executed at the same time on separate CPU cores
3. waiting - *waiting* for some asynchronous call's result e.g. network call, synchronisation calls, system calls
4. runnable - ready to move to a *running* state
5. running - currently *running*
