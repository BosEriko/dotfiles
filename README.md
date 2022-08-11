# Windows Dotfiles
This dotfiles is meant to be run on Windows 10 only.

## AutoHotkey
Download [AutoHotkey](https://www.autohotkey.com/) current version and put both [Overload Capslock](https://gist.github.com/BosEriko/ff2c2543900c3764d2d4985d031e1179) and [Hide Mouse When Typing](https://gist.github.com/BosEriko/b8d5c50e4f466d42ede9845107f9af2b) on the Desktop. Be sure to make them [automatically start](https://stackhowto.com/how-to-run-autohotkey-script-on-startup-windows-10/) on startup.

Note: If you want to play games you can just turn off both the script by closing AutoHotkey on the programs on the right side of the bottom Windows bar and then reopen the scripts again on the Desktop when you’re done playing games.

## PowerToys
Download [PowerToys](https://apps.microsoft.com/store/detail/microsoft-powertoys/XP89DCGQ3K6VLD) for PowerToys Run and Keyboard Manager. Set up Keyboard Manager with the following settings:

**Keys**
- `Esc` to `\``

**Shortcuts**

## Installation
Run this inside WSL.
``` sh
git clone https://github.com/BosEriko/dotfiles-windows.git ~/.files
~/.files/install/entry.sh
```
