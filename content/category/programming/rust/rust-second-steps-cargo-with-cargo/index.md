---
title: "Rust - Second Steps (with Cargo)"
date: 2022-10-08T19:00:00+02:00
summary: "Take your second steps with Rust by exploring the official and widely used package manager, Cargo."
author: "lukefilewalker"
categories: ["programming", "rust"]
tags: ["code", "rust", "programming", "cargo"]
cover:
  image: "rust-second-steps.webp"
  alt: "rust"
  caption: "Photo by Opensource.com"
  relative: true
showtoc: true
#comments: true
---

Rust has an official package manager that most Rust programmers, so-called "Rustaceans", called Cargo. Cargo's features include simplifying the creation of your projects, managing their dependencies and compiling and running your projects to name a few.

If you followed along with [Rust - First Steps]({{< ref "/category/programming/rust/rust-first-steps" >}} "Rust - First Steps") you should have Cargo installed.

You can check this with:

```bash
cargo --version
```

And should get something like:

```bash
$ cargo --version
cargo 1.64.0 (387270bc7 2022-09-16)
```

## Creating a project

To create a project navigate over to the directory where you keep your coding projects. To create a project called `hello_world_cargo` run the following:

```bash
cargo new hello_world_cargo
```

> Remember that the typical naming convention for Rust files is to use underscores in the place of spaces ([snakecase](https://en.wikipedia.org/wiki/Snake_case "Snakecase"))

If all goes well you should see the following:

```bash
$ cargo new hello_world_cargo
     Created binary (application) `hello_world_cargo` package
```

And you should see the following directories and files:

```bash
.
├── .git
├── .gitignore
├── Cargo.toml
└── src
    └── main.rs
```

### `Cargo.toml`

Cargo uses the [TOML](https://toml.io/ "Tom's Obvious Minimal Language") file format to manage the project's config. Below is our `Cargo.toml` with some useful comments:

```toml
[package]                     # A section header indicating the project's settings
name = "hello_world_cargo"
version = "0.1.0"             # The version of Rust the project uses
edition = "2021"              # The edition of Rust to use

[dependencies]                # A section header indicating the project's dependencies (known as "crates")
```

### `src/main.rs`

If you've been following along from [Rust - First Steps]({{< ref "/category/programming/rust/rust-first-steps" >}} "Rust - First Steps") `src/main.rs` should look familiar - it simply prints out "Hello, World!" to standard output.

## Building and running the project

Building the project is as simple as running:

```bash
cargo build
```

If the projects builds successfully you can expect the following output:

```bash
$ cargo build
   Compiling hello_world_cargo v0.1.0 (/Users/lukefilewalker/Sync/personal/study-notes/rust/rust-lang/hello_world_cargo)
    Finished dev [unoptimized + debuginfo] target(s) in 0.65s
```

By default, Cargo creates a debug build and outputs the program binary to `target/debug`. This can now be run with:

```bash
./target/debug/hello_world_cargo
```

After the first build with Cargo, a `Cargo.lock` file is created which keeps track of the exact dependencies and their versions as they pertain to your project.

You can build and run the project at the same time with Cargo's `run` command thusly:

```bash
cargo run
```

## Checking your code before building and running

Cargo allows you to check your code for any issues that would cause your it not to compile. `check` doesn't produce a binary and therefore executes quicker than the `build` and `run` commands. For this reason many Rust developers run it often while coding.

```bash
cargo check
```

## Building for release

When you're sure that your code is spick-and-span and ready to be released into the wild, run:

```bash
cargo build --release
```

Not only does Cargo now place the binary into `target/release`, but more importantly, Cargo optimises your code in order to make your Rust run quicker. This does come with a compilation speed knock which is why there is a faster compilation version i.e. debug, for when you're in the midst of coding.

> Remember to use the **release** version of your program when doing any kind of benchmarking.

peace\_\_\_ c", )
