---
title: "Keep a Docker Container Running for Debugging Purposes"
date: 2022-11-27T07:00:00+02:00
summary: "Four methods to keep a docker container from terminating after a failure in order to debug the issue."
author: "lukefilewalker"
categories: ["devops"]
tags: ["unix", "devops", "docker", "linux", "containers"]
#comments: true
---

A container is an ecosystem for your application and exists as long as your application is running. If you application crashes or never gets off the ground, the Docker container will terminate. It would be helpful to monitor your app and do some scratching around while/after you application crashes in order to track down the cause of the failure. However, because a Docker container is kind of like a little server/machine, if it is off/terminated by the time you want to investigate and won't be able to log into it.

We need a way to keep the container running.

## Method 1 - using `docker`

You can use Docker's `-t` or `--tty` flag to keep the container running even if your application crashes. This flag allows the container to emulate a terminal session - like the one you're running this command from. Like so:

```bash
docker run -d -t alpine
```

## Method 2 - `tail` in the Dockerfile

The most common method however, is to use the Dockerfile's `ENTRYPOINT` to execute some long-running command like `tail`ing a file with the "follow" option:

```bash
# Dockerfile

FROM alpine:latest

ENTRYPOINT ["tail", "-f", "/dev/null"]
```

The `tail` command prints out the last few lines of a file. By default it prints of 10. But when using the `-f` flag, it will watch a file and print out any new data added to the end of it until it is manually terminated with a `SIGKILL` which can be done with a `CTRL-C`. In this case `tail` is watching the `null` device which won't ever print anything but won't ever close/end either allowing `tail` to keep running.

## Method 2 - inlined `tail`

You could inline the above `tail` command in the Docker `run` command like so:

```bash
docker run -d alpine tail -f /dev/null
```

## Method 4 - using `sleep`

In a similar vein as method 2 and 3 you could use the `sleep` command. Give it a long duration and voila:

### In a Dockerfile

```bash
# Dockerfile

FROM alpine:latest

ENTRYPOINT ["sleep", "infinity"]
```

### Inlined in `docker run`

```bash
docker run -d alpine sleep inifinty
```

And there you go :)
