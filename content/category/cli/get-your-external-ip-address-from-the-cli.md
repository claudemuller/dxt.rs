---
id: get-your-external-ip-address-from-the-cli
aliases: []
tags:
  - shell
  - wget
  - bash
  - curl
  - linux
author: lukefilewalker
categories:
  - cli
date: 2015-12-28T18:43:54+02:00
summary: How to get your external IP address on the CLI.
title: Get Your External IP Address From the CLI
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
