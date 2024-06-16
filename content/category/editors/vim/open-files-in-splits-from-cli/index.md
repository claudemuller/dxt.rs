---
tags:
  - nvim
  - vim
  - code
  - editor
  - split
author: lukefilewalker
categories:
  - editors
date: 2024-06-16T08:43:26+0200
summary: How to open multiple files in (N)Vim in Splits from the command line with one command
title: Opening Files in Multiple Splits from the CLI
---
It's quite simple, so let's not belabour the explanation here.

You simply pass the files to be opened to `-o` for _horizontal splits_ and `-O` (uppercase `o`) for _vertical splits_.

The following works in [Vim](https://www.vim.org/) as well as [Neovim](https://neovim.io/).

- **horizontal split** e.g.

```bash
vim -o file.go file_test.go
```

- **vertical split** e.g.

```bash
vim -O file.go file_test.go
```

That's it 😬
