# Windows Dotfiles
This dotfiles is meant to be run on Windows 10 only.

![image](https://user-images.githubusercontent.com/10940193/230788712-a9bfe8c4-c8da-4f44-98fb-fcc367c0be65.png)

## Scoop
Download [Scoop](https://scoop.sh/) as your Windows package manager. Run the command below on Windows PowerShell to install it.
``` sh
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
irm https://raw.githubusercontent.com/BosEriko/dotfiles/master/scoop/install.sh | iex
```

## Ubuntu on WSL + Windows Terminal
[Turn on Developer Mode on the settings](markdown/enable-developer-mode.md) then install both [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701) and [Ubuntu on WSL](https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-10#1-overview). Restart your computer after the installation is complete then update Windows Terminal's [settings](windows-terminal/settings.json).

## Clone the repository
You need to clone the repository recursively. Run this inside Ubuntu on WSL.
``` sh
git clone --recurse-submodules https://github.com/BosEriko/dotfiles.git ~/.files
```

## Setup Environment Variables
Before running the installation script you first need to setup your environment variables located on [KeePassXC](markdown/readme/keepassxc.md).
``` sh
cp ~/.files/zsh/example.env.z.sh ~/.files/zsh/env.z.sh
vim ~/.files/zsh/env.z.sh
```

## Installation Script
After setting up the environment variables you can now proceed to the installation script.
``` sh
sh ~/.files/zsh/env.z.sh && ~/.files/install/entry.sh
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
