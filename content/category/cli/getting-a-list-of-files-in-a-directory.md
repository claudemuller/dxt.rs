---
title: "Getting a List of Files in a Directory"
date: 2015-05-08T20:40:03+02:00
summary: "How to display a single column list of all the files in a directory."
author: "lukefilewalker"
categories: ["cli"]
tags: ["bash", "shell"]
#comments: true
---

Ever need a clean, single column, listing of all the files in a directory in *nix that you could output to a file? Maybe a list of all the series or movies you own.. Here are a couple of additions to the old `ls`  command we all love ;P
```bash 
ls --color=never --format=single-column
```

This command removes colours and lists the output in one single column
```bash 
ls --format=single-column > ~/list-of-files.txt
```

The above command does the same as the previous command except that it doesn't bother stripping colours because it then redirects the output into the file `list-of-files.txt`  to be created in the current user's home directory.

Here are some more variations for the two parameters/switches above:
- `--color=[never|auto|always]` – always being the default
- `--format=[across|commas|horizontal|long|single-column|verbose|vertical]` – these can also be expressed as `[-x|-m|-x|-l|-1|-l|-c]` respectively.

Peace Ooot!
