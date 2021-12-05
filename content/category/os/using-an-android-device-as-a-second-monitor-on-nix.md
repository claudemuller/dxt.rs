---
title: "Using an Android Device as a Second Monitor On *nix"
date: 2021-12-05T17:00:00+02:00
summary: "Using X forwarding sending an application over to an Android device is relatively painless."
author: "lukefilewalker"
categories: ["os"]
tags: ["x", "android"]
#comments: true
---

Ever found yourself on the run, needing a multiple-monitor setup but only have your \*nix machine and an Android device handy? Following is a few commands to run applications on the Android device.

Additionally, this method uses the Android development tool `adb` with the option to use a USB cable instead of WiFi for a little extra speed.

## Requirements

- [XSDL](https://play.google.com/store/apps/details?id=x.org.server)
- [x2x](https://github.com/dottedmag/x2x)
- [xfwm4](https://docs.xfce.org/xfce/xfwm4/start)

## The steps are as follows:

1. Install an X server on your Android device. I'm using [XSDL](https://play.google.com/store/apps/details?id=x.org.server).
2. Run and customise the server e.g. choose the desired resolution etc.
3. Install `adb` on your \*nix machine, like:
```bash
# Arch-based distros
yay -S android-platform-tools
```

```bash
# Debian-based distros
sudo apt-get install android-tools-adb
```

```bash
# Fedora/SUSE-based distros
sudo yum install android-tools
```

```bash
# Macos/OSX-based
brew cask install android-platform-tools
```
4. Connect your Android device to your machine via USB.
5. Enable USB debugging on the device under "Developer Settings" within the Android "Settings". If you don't have the "Developer Settings" menu item you need to [enable¹](#_footnotes_) it.
6. Then, in on your favourite CLI forward from your local TCP port `6100` to the remote `6000`.
7. Next, set up the environment variable to point to the new monitor like so:
```bash
export DISPLAY=:100
```
8. Install `x2x` via your package manager if it is present, or from [Github](https://github.com/dottedmag/x2x).
```bash
# Arch-based distros
yay -S x2x
```
9. Run `x2x` in the background with the following:
```bash
x2x -east -to :100 -from :0 
```
10. Install the `xfwm4` package thusly:
```bash
# Arch-based distros
yay -S xfwm4
```

```bash
# Debian-based distros
sudo apt-get install xfwm4
```

```bash
# Fedora/SUSE-based distros
sudo yum install xfwm4 # presumably?
```
11. And lastly run `xfwm4` and the application you need in a separate terminal editor or via a launcher, script etc. **DO REMEMBER** though to export the `DISPLAY` variable before running said applications.
```bash
# With xfwm4
DISPLAY=:100 && xfwm4 & terminator

# Without xfwm4, such as would be the case on Mac
DISPLAY=:100 && terminator
```

### Notes

- If you end up using this a lot or find the steps tedious, run the following [script](https://github.com/claudemuller/dot-files/blob/master/scripts/.local/bin/start-secondary-mon):
```bash
#!/usr/bin/env bash

export DISPLAY=:100
adb forward tcp:6100 tcp:6000
x2x -east -to :100 -from :0
```
- and use `dmenu` or similar launcher to to prefix the environment variable to and executable.

May the force be with you.

#### _Footnotes_

1. Tap on the "Build number" label seven times (or until you're notified that "Developer Settings" has been enabled)
