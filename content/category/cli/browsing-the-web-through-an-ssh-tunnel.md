---
id: browsing-the-web-through-an-ssh-tunnel
aliases: []
tags:
  - unix
  - shell
  - file
  - linux
  - web
  - brave
  - firefox
  - chrome
author: lukefilewalker
categories:
  - cli
date: 2026-01-03T00:00:00+02:00
summary: For when you need to gateway/jump host to reach a network like the internet or need a secure tunnel in doing so.
title: Browsing the web through an SSH tunnel
---

Using an SSH tunnel allows one to establish a secure route from your machine to a remote machine and pipe your traffic to it as if you are at said machine. 

The machine that you SSH into is typically called:
- SSH gateway
- bastion host
- jump host/box
- proxy host
- relay host

Reasons you may want to use an SSH tunnel could include:
- you don't have access to a network from your machine, but have access to an SSH host that does
- your jump host has a certian type of access that you want to make use of, such as a VPN tunnel

## How to do it

In this example we will be trying to use a VPN tunnel on the jump host.

### Jump host

Ensure that your jump host has the SSH service running.

### Client machine

On Linux, Mac or Windows, in a terminal, run:

```bash
$ ssh -D 1080 -N -v <username>@<host>
```

This should establish the tunnel from your local host on port 1080 to the jump host. To test the tunnel, try to reach a host that only your jump host has access to with something like:

```
$ curl --socks5 127.0.0.1:1080 https://icanhazip.com

# output
123.4.5.6
```

You could run all subsequent TCP traffic through this bastion host with a tool like [proxychains](https://github.com/haad/proxychains) on *nix, or, on all platforms, you can configure your browser to send traffic via this proxy.

There are two ways you could accomplish this: 
- setting your proxy in your operating systems settings; or
- install the extension [foxyproxy](https://getfoxyproxy.org/downloads/) and configure ([firefox](https://help.getfoxyproxy.org/index.php/knowledge-base/how-to-use-your-proxy-service-with-firefox-and-foxyproxy-extension/), [chrome-based](https://help.getfoxyproxy.org/index.php/knowledge-base/how-to-use-your-proxy-service-with-chrome-and-foxyproxy-extension/)).

:hackeremoji
