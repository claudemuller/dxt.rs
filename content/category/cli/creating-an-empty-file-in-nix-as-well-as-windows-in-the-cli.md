---
id: creating-an-empty-file-in-nix-as-well-as-windows-in-the-cli
aliases: []
tags:
  - bash
  - shell
  - freebsd
  - windows
author: lukefilewalker
categories:
  - cli
  - OS
date: 2016-08-02T18:43:54+02:00
summary: How to create an empty file from the CLI in *nix as well as Windows
title: Creating an Empty File in *nix as Well as Windows in the CLI
---

The well-known \*nix method of creating an empty file on the command line is:

```bash
$ touch filename.ext
```

In the Windows command line the same can be accomplished with:

```bash
> copy NUL filename.ext
```

Happy hacking :P
