---
id: index
aliases: []
tags:
  - code
  - tools
  - go
  - programming
author: lukefilewalker
categories:
  - programming
  - go
cover:
  alt: typing
  caption: Photo by osmachko from Pexels
  image: .jpg
  relative: true
date: 2022-10-05T23:20:00+02:00
draft: true
showtoc: true
summary: The Go tool is an important tool in your arsenal when developing Go programs.
title: The Go Tool
---

The Go tool is the tool you are going to use during your Go development for everything from formatting code, querying, downloading and installing packages to building, testing, and running your code.

## Let me show you its features!

`go help` gives us:

```bash
	bug         start a bug report
	build       compile packages and dependencies
	clean       remove object files and cached files
	doc         show documentation for package or symbol
	env         print Go environment information
	fix         update packages to use new APIs
	fmt         gofmt (reformat) package sources
	generate    generate Go files by processing source
	get         add dependencies to current module and install them
	install     compile and install packages and dependencies
	list        list packages or modules
	mod         module maintenance
	work        workspace maintenance
	run         compile and run Go program
	test        test packages
	tool        run specified go tool
	version     print Go version
	vet         report likely mistakes in packages
```

## The workspace

The Go tool uses a so-called workspace, defined in the environment variable `GOPATH`, to store downloaded and compiled packages. By default this is `$HOME/go`.

Within this directory are:

- `src` - where package source code is stored
- `bin` - where executable programs are stored
- `pkg` - where compiled packages are stored

## Go's environment variables

As in \*nix with the `env` command, this can be done with `go env`. This output would look something like:

```bash
$ go env
GO111MODULE=""
GOARCH="arm64"
GOBIN=""
GOCACHE="/Users/lukefilewalker/Library/Caches/go-build"
GOENV="/Users/lukefilewalker/Library/Application Support/go/env"
GOEXE=""
...
```

### Some useful ones to know

- `GOPATH` - the location of downloaded and installed packages
- `GOROOT` - the installation location of Go and its standard packages
- `GOOS` - the character from the action movie [Top Gun](https://www.imdb.com/title/tt0092099/ "Top Gun")... Just kidding, this is the target operating system e.g. darwin, android, windows, linux
- `GOARCH` - the target processor architecture to build for e.g. arm64, amd64, 386
