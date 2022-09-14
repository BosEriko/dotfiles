# Windows Dotfiles
This dotfiles is meant to be run on Windows 10 only.

## AutoHotkey
Download [AutoHotkey](https://www.autohotkey.com/) current version and put both [Overload Capslock](ahk/overload-capslock.ahk) and [Hide Mouse When Typing](ahk/hide-mouse-when-typing.ahk) on the Desktop. Be sure to make them [automatically start](markdown/automatically-start.md) on startup.

## PowerToys
Download [PowerToys](https://apps.microsoft.com/store/detail/microsoft-powertoys/XP89DCGQ3K6VLD) for PowerToys Run and Keyboard Manager. Set up Keyboard Manager with [these settings](markdown/keyboard-manager.md).

## Switcheroo
Download [Switcheroo](https://github.com/kvakulo/Switcheroo/releases) and bind the hotkey to `Ctrl (Left)` `Space`. You also need to enable the following settings:
- Run on Startup
- Activate Switcheroo with `Alt` + `Tab`
- Automatically switch window when releasing `Alt` + `Tab`

## Nerd font
Download `FiraMono.zip` from the latest release of [nerd-fonts](https://github.com/ryanoasis/nerd-fonts/releases) and install every font from the downloaded file.

## Ubuntu on WSL + Windows Terminal
[Turn on Developer Mode on the settings](markdown/enable-developer-mode.md) then install both [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701) and [Ubuntu on WSL](https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-10#1-overview). Restart your computer after the installation is complete then update Windows Terminal's [settings](windows-terminal/settings.json).

## Installation
Run this inside Ubuntu on WSL. Don't forget to change the proper location for the STORAGE env on the script below as well as inside [environment.z.sh](zsh/environment.z.sh).
``` sh
git clone --recurse-submodules https://github.com/BosEriko/dotfiles-windows.git ~/.files
export STORAGE="/mnt/d" && ~/.files/install/entry.sh
```

## Visual Studio Code
Download [Visual Studio Code](https://code.visualstudio.com/) and [sign in using GitHub](https://code.visualstudio.com/docs/editor/settings-sync) to sync your settings. Your keyboard hotkeys can be found [here](https://boseriko-professional.notion.site/boseriko-professional/92045538d4be4360a6486d9d8d5178aa?v=ba96cfa3c35d4d7ca5c386d73c8c0a78). Visual Studio Code will be used when pair programming with someone to avoid confusion if they don't know [Neovim](https://neovim.io/).

## Vieb
Download [Vieb](https://vieb.dev/) and update its [config](vieb/viebrc) file. It's usually on `%APPDATA%\Vieb\viebrc` but if you're unsure where the config file is located on windows you can run `:mkv full` inside Vieb and then take note of the message on the lower right of the Vieb window. You can check out your Vieb hotkeys [here](https://boseriko-professional.notion.site/boseriko-professional/92045538d4be4360a6486d9d8d5178aa?v=ccad9bd920524df8b66880da8b68cc35).

## Obsidian
Download [Obsidian](https://obsidian.md/) to make use of the pulled obsidian folders from the installation script.

## TaskbarX
Download [TaskbarX](https://chrisandriessen.nl/taskbarx) to pimp your windows.

## GlazeWM
Download [GlazeWM](https://github.com/lars-berger/GlazeWM/releases) as your [Tiling Window Manager](https://en.wikipedia.org/wiki/Tiling_window_manager) and update its [config](glazewm/config.yml) file. Refer to its [configuration](https://github.com/lars-berger/GlazeWM#configuration) to know where the config file is located. Be sure to make it [automatically start](markdown/automatically-start.md) on startup.

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
