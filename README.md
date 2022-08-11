# Windows Dotfiles
This dotfiles is meant to be run on Windows 10 only.

## AutoHotkey
Download [AutoHotkey](https://www.autohotkey.com/) current version and put both [Overload Capslock](https://gist.github.com/BosEriko/ff2c2543900c3764d2d4985d031e1179) and [Hide Mouse When Typing](https://gist.github.com/BosEriko/b8d5c50e4f466d42ede9845107f9af2b) on the Desktop. Be sure to make them [automatically start](https://stackhowto.com/how-to-run-autohotkey-script-on-startup-windows-10/) on startup.

Note: If you want to play games you can just turn off both the script by closing AutoHotkey on the programs on the right side of the bottom Windows bar and then reopen the scripts again on the Desktop when you’re done playing games.

## PowerToys
Download [PowerToys](https://apps.microsoft.com/store/detail/microsoft-powertoys/XP89DCGQ3K6VLD) for PowerToys Run and Keyboard Manager. Set up Keyboard Manager with the following settings:

**Keys**
- `Esc` to `` ` ``

**Shortcuts**
- `Alt (Right)` `H` to `Left` for **All Apps**
- `Alt (Right)` `J` to `Down` for **All Apps**
- `Alt (Right)` `K` to `Up` for **All Apps**
- `Alt (Right)` `L` to `Right` for **All Apps**
- `Win (Left)` `Alt (Left)` `H` to `Win (Left)` `Left` for **All Apps**
- `Win (Left)` `Alt (Left)` `J` to `Win (Left)` `Down` for **All Apps**
- `Win (Left)` `Alt (Left)` `K` to `Win (Left)` `Up` for **All Apps**
- `Win (Left)` `Alt (Left)` `L` to `Win (Left)` `Right` for **All Apps**
- `Win (Left)` `Alt (Left)` `S` to `Win (Left)` `Shift (Left)` `S` for **All Apps**
- `Win (Left)` `Alt (Left)` `W` to `Alt (Left)` `F4` for **All Apps**

## Switcheroo
Download [Switcheroo](https://github.com/kvakulo/Switcheroo) and bind the hotkey to `Ctrl (Left)` `Space`. You can also enable it to run on startup inside Switcheroo itself.

## WSL
[Turn on Developer Mode on the settings](https://www.howtogeek.com/292914/what-is-developer-mode-in-windows-10/) then install both [Windows Terminal](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701) and [Ubuntu on WSL](https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-10#1-overview). Restart your computer after the installation is complete.

## Installation
Run this inside WSL.
``` sh
git clone https://github.com/BosEriko/dotfiles-windows.git ~/.files
~/.files/install/entry.sh
```

## Note
I also have some [apps](markdown/apps.md) and [games](markdown/games.md) that I frequently use.

## Call to action
If you want to share some ideas you can email me at boseriko@duck.com.
