---
title: "Get Your External IP Address From the CLI"
date: 2015-12-28T18:43:54+02:00
summary: "How to get your external IP address on the CLI."
author: "lukefilewalker"
categories: ["cli"]
tags: ["shell", "wget", "bash", "curl", "linux"]
#comments: true
---

As long as you have `wget` or `curl` installed, this should work:
```bash 
wget http://ipinfo.io/ip -qO -
```

- `-q` – quiet mode
- `-O –` – output to standard output

Or you could use cURL with the following command:
```bash 
curl http://icanhazip.com
```

:D
