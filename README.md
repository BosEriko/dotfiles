# Dotfiles
This is my personal dotfiles. Feel free to use it or fork it.

## Table of contents
- [Package Manager](#package-manager)
    - [Windows](#windows)
    - [macOS](#macos)
- [Development Environment](#development-environment)
    - [Windows](#windows-1)
    - [macOS](#macos-1)

## Package Manager
### Windows
Download [Scoop](https://scoop.sh/) as your Windows package manager. Run the command below on Windows PowerShell to install it.
``` sh
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
irm https://raw.githubusercontent.com/BosEriko/dotfiles/HEAD/scoop/install.sh | iex
```
### macOS
Download [Brew](https://brew.sh) as your macOS package manager. Run the command below on the default terminal to install it.
``` sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/BosEriko/dotfiles/HEAD/brew/install.sh)"
```

## Development Environment
### Windows
[Turn on Developer Mode on the settings](markdown/enable-developer-mode.md) then install both [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701) and [Ubuntu on WSL](https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-10#1-overview). Restart your computer after the installation is complete then update Windows Terminal's [settings](windows-terminal/settings.json).
### macOS
Open your default terminal and run the commands below to use [Multipass](https://github.com/canonical/multipass).
```sh
brew install multipass
multipass launch
```

## Clone the repository
To start you must first clone the repository. Run the command below on Ubuntu on WSL to clone the repository.
``` sh
git clone --recurse-submodules https://github.com/BosEriko/dotfiles.git ~/.files
```

## Setup Environment Variables
Before running the installation script you first need to setup your environment variables located on [KeePassXC](markdown/readme/keepassxc.md). Run the command below on Ubuntu on WSL to setup your environment variables.
``` sh
cp ~/.files/zsh/example.env.z.sh ~/.files/zsh/env.z.sh
vim ~/.files/zsh/env.z.sh
```

## Installation Script
After setting up the environment variables you can now proceed to the installation script. Run the command below on Ubuntu on WSL to start installing.
``` sh
source ~/.files/zsh/env.z.sh && ~/.files/install/entry.sh
```

## Workflow Tools
There are individual install instructions for the workflow tools I use. Refer below to learn more:
- [AutoHotkey](markdown/readme/autohotkey.md)
- [PowerToys](markdown/readme/powertoys.md)
- [Obsidian](markdown/readme/obsidian.md)
- [Vivaldi](markdown/readme/vivaldi.md)
- [Pimp your Windows](markdown/readme/pimp-your-windows.md)

## Security Tools
There are individual install instructions for the security tools I use. Refer below to learn more:
- [GPG](markdown/readme/gpg.md)
- [KeePassXC](markdown/readme/keepassxc.md)
- [Proton VPN](markdown/readme/proton-vpn.md)

## Note
If you want to play games please close the following applications:

- Overload Capslock (AutoHotkey)
- Hide Mouse When Typing (AutoHotkey)
- TaskbarX
- GlazeWM

**Tip:** You can create desktop shortcuts for the applications listed above so you can easily open them again once you're done playing games.

## Miscellaneous
I also have some [apps](markdown/apps.md) and [games](markdown/games.md) that I frequently use and play along with the [equipment](markdown/equipment.md) of my choice.

## Call to action
If you want to share some ideas you can email me at boseriko@duck.com.
