# Windows Dotfiles
This dotfiles is meant to be run on Windows 10 only.

## Scoop
Download [Scoop](https://scoop.sh/) as your Windows package manager. Run the command below on Windows PowerShell.
``` sh
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
irm get.scoop.sh | iex
irm https://raw.githubusercontent.com/BosEriko/dotfiles-windows/master/scoop/install.sh | iex
```

## AutoHotkey
Download [AutoHotkey](https://scoop.sh/#/apps?q=autohotkey&s=0&d=1&o=true) using [Scoop](https://scoop.sh/) and put both [Overload Capslock](ahk/overload-capslock.ahk) and [Hide Mouse When Typing](ahk/hide-mouse-when-typing.ahk) on the Desktop. Be sure to make them [automatically start](markdown/automatically-start.md) on startup.

## Nerd font
Download `FiraMono.zip` from the latest release of [nerd-fonts](https://github.com/ryanoasis/nerd-fonts/releases) and install every font from the downloaded file.

## Ubuntu on WSL + Windows Terminal
[Turn on Developer Mode on the settings](markdown/enable-developer-mode.md) then install both [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701) and [Ubuntu on WSL](https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-10#1-overview). Restart your computer after the installation is complete then update Windows Terminal's [settings](windows-terminal/settings.json).

## Installation Script
Run this inside Ubuntu on WSL. Don't forget to change the proper location for the STORAGE env on the script below as well as inside [environment.z.sh](zsh/environment.z.sh).
``` sh
git clone --recurse-submodules https://github.com/BosEriko/dotfiles-windows.git ~/.files
export STORAGE="/mnt/d" && ~/.files/install/entry.sh
```

## Workflow Tools
There are individual install instructions for the workflow tools I use. Refer below to learn more:
- [PowerToys](markdown/readme/powertoys.md)
- [Switcheroo](markdown/readme/switcheroo.md)
- [Visual Studio Code](markdown/readme/visual-studio-code.md)
- [Vieb](markdown/readme/vieb.md)
- [Obsidian](markdown/readme/obsidian.md)
- [KeePassXC](markdown/readme/keepassxc.md)
- [Pimp your Windows](markdown/readme/pimp-your-windows.md)

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
