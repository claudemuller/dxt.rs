---
title: "Using The File Command to Identify a File"
date: 2022-08-08T03:00:00+02:00
summary: "Using the `file` command to identify a file's type on a *nix system."
author: "lukefilewalker"
categories: ["cli"]
tags: ["unix", "shell", "file", "linux"]
#comments: true
---

If you've ever had a file without an extension lying around your filesystem or a file that says it's a jpeg but refuses to show itself in a graphics application, the `file` command is for you. The command ships with just about every \*nix under the sun (including MacOS/OSX).

#### Basic usage

```bash
$ file <the_file>
```

For example, on my M1 Macbook Pro (MacOS 12.x) running `file` on `/bin/bash` produces:

```bash
/bin/bash: Mach-O universal binary with 2 architectures: [x86_64:Mach-O 64-bit executable x86_64
- Mach-O 64-bit executable x86_64] [arm64e:Mach-O 64-bit executable arm64e
- Mach-O 64-bit executable arm64e]
/bin/bash (for architecture x86_64):	Mach-O 64-bit executable x86_64
/bin/bash (for architecture arm64e):	Mach-O 64-bit executable arm64e
```

While on my x86_64 Linux machine the same command produces:

```bash
/bin/bash: ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=9483da49f2e17070c1df9a75d509e09211e96769, for GNU/Linux 4.4.0, not stripped
```

Some useful switches include:

- `-z <filename>` - determine the file types of files inside a zipped archive
- `-I <filename>` - determine the mime type of said file

Go forth and conquer!

:P
