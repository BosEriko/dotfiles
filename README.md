# Windows Dotfiles
This dotfiles is meant to be run on Windows 10 only.

## AutoHotkey
Download [AutoHotkey](https://www.autohotkey.com/) current version and put both [Overload Capslock](ahk/overload-capslock.ahk) and [Hide Mouse When Typing](ahk/hide-mouse-when-typing.ahk) on the Desktop. Be sure to make them [automatically start](markdown/automatically-start.md) on startup.

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

## Pimp your Windows
### TaskbarX
Download [TaskbarX](https://chrisandriessen.nl/taskbarx) to pimp your taskbar. Adjust the theme according to how you see fit!

### GlazeWM
Download [GlazeWM](https://github.com/lars-berger/GlazeWM/releases) as your [Tiling Window Manager](https://en.wikipedia.org/wiki/Tiling_window_manager) and update its [config](glazewm/config.yml) file. Refer to its [configuration](https://github.com/lars-berger/GlazeWM#configuration) to know where the config file is located. Be sure to make it [automatically start](markdown/automatically-start.md) on startup.

### Files App
Download [Files App](https://www.microsoft.com/store/productId/9NGHP3DX8HDX) as your File Explorer and change its theme to `Glass`.

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
