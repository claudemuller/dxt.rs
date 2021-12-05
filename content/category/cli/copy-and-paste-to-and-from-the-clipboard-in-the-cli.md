---
title: "Copy and Paste to and From the Clipboard in the CLI"
date: 2015-10-23T18:43:54+02:00
summary: "How to copy and paste to and from the clipboard while working in the CLI."
author: "lukefilewalker"
featured: true
categories: ["cli"]
tags: ["bash", "shell", "xclip", "linux"]
#comments: true
---

Firstly make sure that you have the required software installed – `xclip`.

#### For Debian-based systems execute the following:
```bash 
$ apt-get install xclip
```

#### For Redhat-based systems run:
```bash 
$ yum install xclip
```

#### For systems with pacman e.g. Arch and Manjaro:
```bash 
$ pacman -S xclip
```

#### Gentoo-based systems:
```bash 
$ emerge xclip
```

If you have any trouble installing `xclip` due to permission levels, prefix the above commands with `sudo` to escalate yourself momentarily to administrator level.

Now for the actual copy and pasting!

To copy text or the output of a command to the clipboard you need to pipe it to `clip -selection clipboard`. Following are some examples

&nbsp;

```bash 
$ cat readme.txt | xclip -selection clipboard
```
copies the contents of `readme.txt` to the clipboard

&nbsp;

```bash 
$ ls -1 | xclip -selection clipboard
```
copies the current directory’s single-columned listing to the clipboard

&nbsp;

And now for pasting from the clipboard. To paste from the clipboard you need to execute:
```bash 
$ xclip -o
```
The best use of this command would be to redirect the output into a file or assign this command to a keyboard shortcut.

:)
