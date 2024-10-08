---
id: index
aliases: []
tags:
  - code
  - rust
  - programming
  - hello-world
author: lukefilewalker
categories:
  - programming
  - rust
cover:
  alt: rust
  caption: Photo by Opensource.com
  image: rust-first-steps.webp
  relative: true
date: 2022-10-08T11:20:00+02:00
showtoc: true
summary: Take your first steps with Rust by installing the toolchain and writing your first program.
title: Rust - First Steps
---

Rust aims to provide a more ergonomic programming experience to all developers while helping you to write less insecure and faulty code (especially when it comes to low-level code and concurrency) and producing fast and stable programs.

## Installation

The easiest way to get set up is to use the official toolchain installer, `rustup`.

### In Linux and MacOS/OSX

Execute the following command in the CLI:

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

> If you have an installation of Rust already on your system, be sure to first uninstall it, e.g. if on MacOS with `brew` then `brew remove rust`

> If on MacOS/OSX, ensure that you have a C compiler installed with `xcode-select --install`

### In Windows

The simplest option is to download the installer [here_x32](https://win.rustup.rs/i686 "The 32bit version of the installer") or [here_x64](https://win.rustup.rs/x86_64 "The 64bit version of the installer") and run it.

### Installation confirmation

In order to confirm that the `rustc` compiler is installed and ready for action, run:

```bash
rustc --version
```

You should see something like:

```bash
$ rustc --version
rustc 1.64.0 (a55dd71d5 2022-09-19)
```

## Writing your first Rust program

In keeping with [programming tradition](https://en.wikipedia.org/wiki/%22Hello,_World!%22_program) we shall hack together a quick program that prints "Hello, World!" to standard output.

Fire up your favourite editor/IDE (I'm hoping you choose Vim 😬), type up the following bit of code and save it as `main.rs`:

```rust
// main.rs

fn main() {
    println!("Hello, World!");
}
```

### The basics of `main.rs`

- `fn` is the keyword to define a function in Rust and in this case, i.e. the `main` function, it is the entrypoint into the program.
- functions need to be wrapped with braces i.e. `{}`
- code should be indented with 4 spaces, not tabs.
- macro calls look like function calls except for the exclamation mark in between the name and the opening parenthesis e.g. `println()` vs `println!()`
- lines end with a semi-colon.

## Compiling and running

Compiling and running your Rust programs is a two-step process. To compile the program, run:

```bash
rustc main.rs
```

And to run the binary:

```bash
./main
```

These can be combined with the AND/&& operator in your shell thusly:

```bash
rustc main.rs && ./main
```

> _**Note:**_ if you're on Windows, omitting the `./` should work 😬

You should see the following output:

```bash
$ rustc main.rs && ./main
Hello, World!
```

In the next article we'll start diving in to the details 😬
