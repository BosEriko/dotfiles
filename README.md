# Windows Dotfiles
This dotfiles is meant to be run on Windows 10 only.

## AutoHotkey
Download [AutoHotkey](https://www.autohotkey.com/) current version and put both [Overload Capslock](ahk/overload-capslock.ahk) and [Hide Mouse When Typing](ahk/hide-mouse-when-typing.ahk) on the Desktop. Be sure to make them [automatically start](markdown/automatically-start.md) on startup.

**Note:** If you want to play games you can just suspend both the AutoHotkey script on the programs on the right side of the bottom Windows bar and then activate the scripts again on the Desktop when you’re done playing games.

## PowerToys
Download [PowerToys](https://apps.microsoft.com/store/detail/microsoft-powertoys/XP89DCGQ3K6VLD) for PowerToys Run and Keyboard Manager. Set up Keyboard Manager with [these settings](markdown/keyboard-manager.md).

## Switcheroo
Download [Switcheroo](https://github.com/kvakulo/Switcheroo) and bind the hotkey to `Ctrl (Left)` `Space`. You also need to enable the following settings:
- Run on Startup
- Activate Switcheroo with `Alt` + `Tab`
- Automatically switch window when releasing `Alt` + `Tab`

## Powerline fonts
1. Open a Powershell session as administrator.
2. Download and expand the Powerline fonts repository:
```
powershell -command "& { iwr https://github.com/powerline/fonts/archive/master.zip -OutFile ~\fonts.zip }"
Expand-Archive -Path ~\fonts.zip -DestinationPath ~
```
3. Update the execution policy to allow the installation of the fonts:
```
Set-ExecutionPolicy Bypass
```
4. Run the installation script:
```
~\fonts-master\install.ps1
```
5. Revert the execution policy back the default value:
```
Set-ExecutionPolicy Default
```

## Windows Terminal + Ubuntu on WSL
[Turn on Developer Mode on the settings](markdown/enable-developer-mode.md) then install both [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701) and [Ubuntu on WSL](https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-10#1-overview). Once the restart is done open the Windows Terminal JSON file inside Settings and replace the contents with [this](windows-terminal/settings.json).

## Installation
Run this inside Ubuntu on WSL. Don't forget to change the proper location for the STORAGE env on the script below as well as inside this [environment.z.sh](zsh/modules/environment.z.sh).
``` sh
git clone https://github.com/BosEriko/dotfiles-windows.git ~/.files
export STORAGE="/mnt/d" && ~/.files/install/entry.sh
```

## Visual Studio Code
Download [Visual Studio Code](https://code.visualstudio.com/) and [sign in using GitHub](https://code.visualstudio.com/docs/editor/settings-sync) to sync your settings. Your keyboard hotkeys can be found [here](https://boseriko-professional.notion.site/boseriko-professional/92045538d4be4360a6486d9d8d5178aa?v=ba96cfa3c35d4d7ca5c386d73c8c0a78).

## Note
I also have some [apps](markdown/apps.md) and [games](markdown/games.md) that I frequently use and play along with the [equipment](markdown/equipment.md) of my choice.

## Call to action
If you want to share some ideas you can email me at boseriko@duck.com.
