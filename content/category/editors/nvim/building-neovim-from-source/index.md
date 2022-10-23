---
title: "Building Neovim from Source"
date: 2022-10-23T11:00:00+02:00
summary: "How to build Neovim from source if, for example, there is no binary for your system."
author: "lukefilewalker"
categories: ["editor"]
tags: ["nvim", "code", "editor"]
#comments: true
---

You may need to build Neovim from scratch for a variety of reasons, some of these include:

- not having a binary available for your operating system
- not having a binary available for your CPU architecture <- this was my reason as I had to build for Ubuntu on an M1 Pro chip
- needing to compile with a non-default option
- because you're curious (good for you :)

## Get a hold of the code

You can either download the source code from the [Neovim github repo](https://github.com/neovim/neovim/releases), navigating to the version you're interested in, scrolling down to "Assets" and downloading the "Source code" archive.

Or you can clone the repository with the following command:

```bash
git clone https://github.com/neovim/neovim.git
```

### Downloaded source

You need to decompress the archive that you downloaded thusly:

#### `tar` archive

```bash
tar zxvf <filename>.tar.gz
```

#### `zip` archive

```bash
unzip <filename>.zip
```

## Building Neovim

### Prerequisites

There is some software that you need in order to build Neovim. The installation instructions differ from system to system, but you can find the instructions for your system (hopefully :) [here](https://github.com/neovim/neovim/wiki/Building-Neovim#build-prerequisites).

For Ubuntu, you need to run the following:

```bash
sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen
```

### Building

Whether you cloned the repository or downloaded the source code manually you need to `cd` into the directory containing the source code and run:

```bash
make CMAKE_BUILD_TYPE=Release
```

This will build a release version in the current directory in `./build`. To install the binary system-wide, you need to run:

```bash
sudo make install
```

That should do it. If you need/want to clean up a partial build and start again, you can run:

```bash
make distclean
```

I hope this helps :)
