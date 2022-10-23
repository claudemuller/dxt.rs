---
title: "Redirect Output When You Don't Have Permission to"
date: 2022-09-02T22:15:00+02:00
summary: "How to redirect output from a command you've run to a file that you don't have permission to write to i.e. to a destination that you need to use `sudo` on."
author: "lukefilewalker"
categories: ["cli"]
tags: ["shell", "bash", "linux", "redirect"]
#comments: true
---

Redirecting the output from a command to a file is pretty trivial - you accomplish it with something like this:

```bash
echo "testing 1234" > dest_file.txt
```

However if you naively try to throw `sudo` in there in order to write to a file that you don't have write access to, you'd be sorely disappointed, like I have been. Thus, trying the following fails:

```bash
sudo echo "testing 1234" > dest_file.txt
```

This would run the `echo` command as `root`, but the redirect part still runs as your underpowered user. Additionally, putting `sudo` after the redirection operator thusly:

```bash
echo "testing 1234" > sudo dest_file.txt
```

Would create a file called `sudo` :D Not what we want!

### Solution!

One common way to accomplish the above is to use the `tee` command in this way:

```bash
echo "testing 1234" | sudo tee dest_file.txt
```

Things to remember is that you'd have to "pipe" (`|`) the output instead of redirecting (`>`) as `tee` is a command and if you want to append to the destination file you need to specify the `-a` flag. Like this:

```bash
echo "testing 1234" | sudo tee -a dest_file.txt
```

Boom! Magic :P
