---
title: Fixing Permission denied or Could not read from remote repository issues
date: 2023-11-08T05:00:00+02:00
summary: How fix the dreaded Permission denied/Could not read from remote repository issue i.e. how to set up an SSH agent system wide that manages SSH keys seamlessly (on Linux).
author: lukefilewalker
categories:
  - OS
tags:
  - linux
  - ssh
  - ssh-agent
  - obsidian
  - git
  - systemctl
  - systemd
---
I don't know about you, but I struggle with this a lot - until now!! 🦾

It's worth mentioning that this solution:
- works on Linux operating systems
- resolves a specific issue related to this error message - that being SSH keys are not present in Linux when accessing a git repository (unless you know that this is your issue, first run through [this](https://docs.github.com/en/authentication/troubleshooting-ssh/error-permission-denied-publickey) Github troubleshooting page and come back if the problem persists)
- works with [Systemd](https://systemd.io/)

## The Problem

As alluded to above, the issue under the spotlight here is when you either **don't have** an **SSH agent** running or it doesn't have the relevant **SSH keys** loaded in order to **authenticate** with the server hosting your repository.

If you running a big [Desktop Environment](https://en.wikipedia.org/wiki/Desktop_environment) like KDE, Gnome, Cinnamon and the like, this is handled for you. But for those that use [Window Managers](https://en.wikipedia.org/wiki/Window_manager) like `dwm`, `xmonad`, `hyprland` and the like, this may not be the case.

### How the issue presents itself in the terminal

```bash
Connection closed by x.y.z
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
```

## The Solution

We will solve this issue by running an SSH agent **user service** that constantly adds and manages SSH keys while you're logged in. This will fix access to repositories as well as for applications such as [Obsidian](https://obsidian.md/) (and its [Obsidian Git](https://github.com/denolehov/obsidian-git) plugin).

1. Open a terminal and start an SSH agent with:

```bash
eval $(ssh-agent)
```

2. Ensure that the agent is running by executing:

```bash
echo $SSH_AUTH_SOCK

# Example expected output
#
# /tmp/ssh-megq74th/agent.12345
```

3. Add your SSH keys to the agent

```bash
ssh-add

# Example expected output
#
# Identity added: /home/user/.ssh/id_rsa (user@localhost)
```

4. Verify that the SSH key has been added by listing out the loaded keys:

```bash
ssh-add -l

# Example expected output
# 
# 1234 SHA256:<KEY_ID> user@localhost (RSA)
```

Congratulations, your SSH agent is running and works. Now we need to get all of this working in the background, upon login.

5. Create a user service config in `~/.config/systemd/user/ssh-agent.service` with the following content:

```
[Unit]
Description=SSH key agent

[Service]
Type=simple
Environment=SSH_AUTH_SOCK=%t/ssh-agent.socket
ExecStart=/usr/bin/ssh-agent -D -a $SSH_AUTH_SOCK

[Install]
WantedBy=default.target
```

6. Add the following environment variable export to you shell's runtime config i.e. `.bash_profile` for Bash, `.zshrc` for Zsh etc.

```bash
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
```

7. Add the following git config pair to `~/.ssh/config`

```
Host *
	AddKeysToAgent yes
```

8. Enable the service to run at login

```bash
systemctl --user enable ssh-agent
```

9. Run the service now (so that you don't need to log out)

```bash
systemctl --user start ssh-agent
```

And all should be working now (hopefully) 😆
