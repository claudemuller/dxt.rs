---
title: "Inserting Command Line Results Directly Into Vim"
date: 2015-03-24T20:45:11+02:00
summary: "Inserting the output of a shell command directly into your current `vim` buffer."
author: "lukefilewalker"
categories: ["editors"]
tags: ["vim"]
#comments: true
---

Sometimes you need to fetch some data or the results of a shell command and insert it into your current buffer of `vim`. You could copy and paste this from one window to another or use `tmux` to copy to the clipboard and paste into `vim`. Or... You could do it straight from `vim` - like so...
```vim 
:read !ls -lah
```
- `:` – VIM colon command prompt
- `read` – insert what comes to the right of the read command into the current buffer
- `!` – execute shell command
- `ls -lah` – directory listing on a *nix OS

And for something spiffy, insert the result of a math calculation!
```vim 
:read !expr 160170 / 2
```

&nbsp;

`:read !echo "like a boss!"`
