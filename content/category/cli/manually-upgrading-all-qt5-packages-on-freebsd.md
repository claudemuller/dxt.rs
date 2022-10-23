---
title: "Manually Upgrading All Qt5 Packages on FreeBSD"
date: 2019-10-17T18:43:54+02:00
summary: "How to manually upgrade all QT5 packages on FreeBSD with `xargs`."
author: "lukefilewalker"
categories: ["cli", "os"]
tags: ["bash", "shell", "xargs", "pkg", "freebsd"]
#comments: true
---

It all started with my obsession to switch to FreeBSD from Manjaro Linux as my daily driver. But there were a few caveats! First, I couldn't get Jetbrains' IDEs to work... But fixed that. Then the other main stumbling block was getting Slack messenger to work on FreeBSD.

I found Weechat and the wee-slack plugin but I need to share my screen with clients – so no go. Then I thought about running doze or something in a VM and running Slack there! So I needed to get Virtualbox working.

I installed with `pkg` and tried to run it and found that my Qt library was out of date. So thinking that I could just install the new version I ran `pkg install qt5`. It installed version 5.13 but 5.12 still hung around. And I wasn't able to remove it with `pkg delete qt` – that just removed version 5.12.

In a post outlining a similar problem I found at [https://lists.freebsd.org/pipermail/freebsd-stable/2018-May/089036.html](https://lists.freebsd.org/pipermail/freebsd-stable/2018-May/089036.html) Rod talked about painstakingly upgrading each Qt package. So I thought, "how could I automate this?"

Enter `xargs`. I ran `pkg version qt5 | grep 5.12 > qt.txt` and then piped that into `pkg upgrade` to upgrade the list with `cat qt5.txt > xargs pkg upgrade -y` and viola! It upgraded all the Qt packages :) Success – Virtualbox works!!

I hope this helps someone :)
