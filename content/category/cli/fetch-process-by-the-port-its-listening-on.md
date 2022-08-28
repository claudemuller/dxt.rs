---
title: "Fetch Process IDs or Names by the Port They're Listening On"
date: 2022-08-28T08:00:00+02:00
summary: "Fetch Process IDs or Names by the Port They're Listening On."
author: "lukefilewalker"
featured: true
categories: ["cli"]
tags: ["bash", "shell", "lsof", "linux", "net", "port", "unix", "netstat", "macos", "linux", "windows"]
#comments: true
---

Sometimes you need to see which process is running on which port on your system. That may be out of pure curiosity, because an application you're developing is complaining that the intended port is in use, or, dun dun dun, you have a backdoor accepting connections!

The tool we need is called `netstat` which is readily available on *nix systems and even micro$soft doze! If you find that your system doesn't have `netstat` installed, here are some install commands to acquire said tool via the `net-tools` package:

### For Debian-based systems execute the following:
```bash 
$ sudo apt install net-tools
```

### For Redhat-based systems run:
```bash 
$ sudo yum install net-tools
```

### For systems with pacman e.g. Arch and Manjaro:
```bash 
$ pacman -S net-tools
```

### Fedora-based systems:
```bash 
$ sudo dnf install net-tools
```

Netstat has a bunch of flags to fetch different information from your system, but for our purposes, we'll use the following variation:

### On Linux

```bash
netstat -tulpn
```

#### Flags Breakdown:

- `-t --tcp` - show ports using the TCP protocol
- `-u --udp` - show ports using the UDP protocol
- `-l, --listening` - show only listening sockets
- `-p, --program`  - show the PID and name of the program listening on a given port
- `-n, --numeric` - show numerical addresses instead of attempting to resolve symbolic hosts/ports/user names. 

### On MacOS/OSX

MacOS's netstat is a little different. Firstly, you can't specify TCP and UDP traffic together; secondly, you have to pipe the output to `grep` in order to show only listening ports; and thirdly, and most importantly, you can't get the PID of the process on a port. All is not lost however as you can get the PID with [`lsof`](https://dxt.rs) That said, here is the best alternative for MacOS using `netstat` I could come up with:

```bash
netstat -an -p tcp | grep LISTEN && netstat -an -p udp
```

#### Flags Breakdown:

- `-a` - show state of all sockets
- `-n` - show numerical addresses instead of attempting to resolve symbolic hosts/ports/user names. 
- `-p` - the protocol to output

### On Windows

And as on MacOS, you have to specify TCP and UDP output in two separate commands but at least you can get the PIDs - yay Windows :P

```bash
netstat -ano -p tcp
```

#### Flags Breakdown:

- `-a` - show state of all sockets
- `-n` - show numerical addresses instead of attempting to resolve symbolic hosts/ports/user names. 
- `-o` - show the PID of the process listening on the given port
- `-p` - the protocol to output

And now that you know that there is a backdoor on your machine the next step is... panic :D

