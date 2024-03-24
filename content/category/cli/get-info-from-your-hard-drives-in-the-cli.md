---
title: "Fetching Useful Information About Your Storage Disks in the CLI"
date: 2022-05-15T18:43:54+02:00
summary: "How to fetch information from the manufacturer and model to temperatures."
author: "lukefilewalker"
categories: ["cli"]
tags:
  [
    "hwinfo",
    "lshw",
    "hdparm",
    "nvme-cli",
    "nvme",
    "ssd",
    "hard-disk",
    "linux",
    "storage",
    "temperature",
    "stats",
  ]
#comments: true
---

Ever needed the model number of the hard disk in your machine but been too lazy (or smart?) to open the sucker up to look? Agreed - me too. Luckily, there are a handful of tools that we can use in a \*nix (probably :D - definitely in an LInUx environment) to get all that juicy hard disk gossip!

As some of these tools may not come pre-installed with your flavour of Linux, I will include the installation commands for a few parent-tier™ (I just made that up :)) disros.

## For All Storage Drive Types

### `lshw`

#### For Debian-based systems execute the following:

```bash
$ apt-get install lshw
```

#### For Redhat-based systems run:

```bash
$ yum install lshw
```

#### For systems with pacman e.g. Arch and Manjaro:

```bash
$ pacman -S lshw
```

#### Gentoo-based systems:

```bash
$ emerge lshw
```

### `hwinfo`

#### For Debian-based systems execute the following:

```bash
$ apt-get install hwinfo
```

#### For Redhat-based systems run:

```bash
$ yum install hwinfo
```

#### For systems with pacman e.g. Arch and Manjaro:

```bash
$ pacman -S hwinfo
```

#### Gentoo-based systems:

```bash
$ emerge hwinfo
```

## For Non-NVME Drives

### `hdparm`

#### For Debian-based systems execute the following:

```bash
$ apt-get install hdparm
```

#### For Redhat-based systems run:

```bash
$ yum install hdparm
```

#### For systems with pacman e.g. Arch and Manjaro:

```bash
$ pacman -S hdparm
```

#### Gentoo-based systems:

```bash
$ emerge hdparm
```

## For NVME drives

### `nvme`

As this is not a tool that comes pre-installed with most distros it seems, you'll have to install it from your distro's repos. Following are some such commands:

#### For Debian-based systems execute the following:

```bash
$ apt-get install nvme-cli
```

#### For Redhat-based systems run:

```bash
$ yum install nvme-cli
```

#### For systems with pacman e.g. Arch and Manjaro:

```bash
$ pacman -S nvme-cli
```

#### Gentoo-based systems:

```bash
$ emerge nvme-cli
```

:)
