---
title: "Delete All Files Except for a Particular Extension"
date: 2015-12-15T18:43:54+02:00
summary: "How to delete all the files in the current directory except for files of a certain extension."
author: "lukefilewalker"
featured: true
categories: ["cli"]
tags: ["shell", "bash", "linux"]
#comments: true
---

Say you wanted to delete all files in the current directory except `README.txt`. You could accomplish this by using find:
```bash 
$ find . -type f ! -name 'README.txt' -delete
```

Similarly to delete everything but a certain extension:
```bash 
$ find . -type f ! -name '*.tmp' -delete
```

Peace!!
