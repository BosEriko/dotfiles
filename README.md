# Dotfiles
This is my personal dotfiles for Windows. Feel free to use it or fork it.

## Clone the repository
To start you must first clone the repository. Run the command below on Ubuntu on WSL to clone the repository.
``` sh
git clone --recurse-submodules https://github.com/BosEriko/dotfiles.git ~/.files
```

## Setup Environment Variables
Before running the installation script you first need to setup your environment variables located on [KeePassXC](markdown/readme/keepassxc.md). Run the command below on Ubuntu on WSL to setup your environment variables.
``` sh
cp ~/.files/zsh/example.env.z.sh ~/.files/zsh/env.z.sh
nano ~/.files/zsh/env.z.sh
```

## Installation Script
After setting up the environment variables you can now proceed to the installation script. Run the command below on Ubuntu on WSL to start installing.
``` sh
source ~/.files/zsh/env.z.sh && ~/.files/install/entry.sh
```

## Tools
There are individual install instructions for the tools I use. Refer below to learn more:
### Workflow
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
- GlazeWM

## Call to action
If you want to share some ideas you can email me at boseriko@duck.com.
