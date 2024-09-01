---
id: running-a-command-on-each-something-in-a-list
aliases: []
tags:
  - bash
  - shell
  - while
author: lukefilewalker
categories:
  - cli
date: 2022-10-09T14:15:00+02:00
summary: Easily run a command on each item in a list - think list of filenames for example.
title: Running a Command on Each Item in a List
---

Ever wanted to run some command on a list of inputs? That is to say, execute said command on each item in a list. That could be running a command on a list of file names, running a command multiple times each with at different input value etc.

This can be done quite easily by shoe-horning a `while` loop fed by pipe onto a single line in the format:

```bash
<in_command> | while read in; do <proc_command> $in; done
```

Here `in_command` is what feeds the list into the `while` loop, `in` is the current item in the list being operated on and `proc_command` is the command that does the processing on said item.

## Examples

### Deleting a list of files

Here we pipe a list of file names into the `while` loop where `rm` is run on each iteration thereby deleting each file.

```bash
cat files.txt | while read file; do rm $file; done
```

### Ping a bunch of IPs

Here we pipe a list of IP addresses into the `while` loop where `ping` is run on each iteration for 5 pings.

```bash
cat ips.txt | while read ip; do ping -c 5 $ip; done
```

:)
