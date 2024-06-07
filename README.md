# Dotfiles
This is my personal dotfiles for Windows. Feel free to use it or fork it.

## Package Manager
Download [Scoop](https://scoop.sh/) as your package manager. Run the command below on PowerShell to install it.
``` sh
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
scoop install git
irm https://raw.githubusercontent.com/BosEriko/dotfiles/HEAD/scoop/install.sh | iex
```

## Development Environment
[Turn on Developer Mode on the settings](markdown/enable-developer-mode.md) then install both [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701) and [Ubuntu on WSL](https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-10#1-overview). Restart your computer after the installation is complete. Download [FiraMono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraMono.zip) then update Windows Terminal's [settings](windows-terminal/settings.json). Update `defaultProfile` and `profiles.list[0].guid` inside Windows Terminal's settings if necessary.

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

## Tools
There are individual install instructions for the tools I use. Refer below to learn more:
### Workflow
- [AutoHotkey](markdown/readme/autohotkey.md)
- [PowerToys](markdown/readme/powertoys.md)
- [Obsidian](markdown/readme/obsidian.md)
- [Firefox](markdown/readme/firefox.md)
- [Pimp your Windows](markdown/readme/pimp-your-windows.md)
### Security
There are individual install instructions for the security tools I use. Refer below to learn more:
- [GPG](markdown/readme/gpg.md)
- [KeePassXC](markdown/readme/keepassxc.md)

## Game Mode
If you want to play games please close the following applications:
- [WSL](markdown/toggle-wsl.md)
- Overload Capslock (AutoHotkey)
- Hide Mouse When Typing (AutoHotkey)
- Escape as Tilde (AutoHotkey)
- GlazeWM

## Call to action
If you want to share some ideas you can email me at boseriko@duck.com.
