# Dotfiles
This dotfiles is meant to be run on a fresh install of OSX only.

## Installation
``` sh
xcode-select --install
git clone https://github.com/BosEriko/dotfiles.git ~/.dotfiles
~/.dotfiles/install/entry.sh
```

## Disable System Integiry Protection [[?](https://howtomacos.com/2019/11/01/disable-system-integrity-protection-in-macos-catalina/)]
It is not recommended to disable SIP but this is required to run [Yabai](http://github.com/koekeishiya/yabai) smoothly
- Restart your Mac, then hold down `Command + R` key combination to enter recovery mode
- Once it boots in, click on Terminal
- Type in the following command to turn off SIP completely
``` sh
csrutil disable
```
- Restart the system

## A few more steps
Open [Karabiner-Elements](https://pqrs.org/osx/karabiner/) and enable the following complex modifications:
- [Change caps_lock to control if pressed with other keys, to escape if pressed alone.](https://pqrs.org/osx/karabiner/complex_modifications/#caps_lock) ([Open JSON](https://pqrs.org/osx/karabiner/complex_modifications/json/caps_lock.json))
- [Mouse keys (full) (rev 4)](https://pqrs.org/osx/karabiner/complex_modifications/#mouse_keys_full) ([Open JSON](https://pqrs.org/osx/karabiner/complex_modifications/json/mouse_keys_full.json))
- Change right_command+hjkl to arrow keys

After setting [Karabiner-Elements](https://pqrs.org/osx/karabiner/) you can now close it and then proceed to installing [Alfred](https://www.alfredapp.com/) then do the following:
- Disable Spotlight's hotkeys
- Set [Alfred](https://www.alfredapp.com/)'s hotkey to `Command + Spacebar`
- Enable Web Bookmarks under the Features tab
- Update the [Web Searches](markdown/alfred.md)

You also need to setup Mission Control to be able to work with [Yabai](http://github.com/koekeishiya/yabai) properly. Open Mission Control's setting then do the following:
- Enable "Display have separate Spaces"
- Disable "Automatically rearrange Spaces based on most recent use"

[Yabai](http://github.com/koekeishiya/yabai) will also be using the hotkey for taking screenshots and screencasts so that needs to be updated. Open the Keyboard section inside System Preferences then do the following:
- Select Screenshots from the list of options on the left
- Change the hotkey of "Screenshots and recording options" to `option + cmd + p`

Close Accessibility's setting and then install [Dash](https://kapeli.com/dash) and [Contexts](https://contexts.co/). Be sure to set Dash and Contexts to dark mode after installing them!

That's it! You can now open Hyper or VSCodium.

## Note
I also have some [Chrome Extensions](markdown/chrome-extensions.md), [Apps](markdown/apps.md) and [Games](markdown/games.md) that I frequently use.

## Call to action
If you want to share some ideas you can email me at mail@boseriko.com.
