# Dotfiles
Intended to be run on a fresh environment of OSX only.

## Installation

    # Open the default terminal and run the following
    xcode-select --install
    git clone https://github.com/BosEriko/dotfiles.git ~/dotfiles
    sh ~/dotfiles/install.sh

## A few more steps
Close the default terminal.

Open Karabiner-Elements and enable the following complex modifications:
- [Change caps_lock to control if pressed with other keys, to escape if pressed alone.](https://pqrs.org/osx/karabiner/complex_modifications/#caps_lock) ([Open JSON](https://pqrs.org/osx/karabiner/complex_modifications/json/caps_lock.json))
- [Mouse keys (simple) (rev 1)](https://pqrs.org/osx/karabiner/complex_modifications/#mouse_keys_simple) ([Open JSON](https://pqrs.org/osx/karabiner/complex_modifications/json/mouse_keys_simple.json))
- Change right_command+hjkl to arrow keys

After setting Karabiner-Elements you can now close it and then proceed to setting up the controls for Spectacle.
- Option + Command + H for Left Half
- Option + Command + L for Right Half
- Option + Command + K for Top Half
- Option + Command + J for Bottom Half

Close Spectacle's preferences and then open Keyboard Shortcuts under System Preferences. Set up Mission Control with the following:
- Control + H for Move left a space
- Control + L for Move right a space

Close Keyboard Shortcuts and then open Hyper or Visual Studio Code and that's it!

## Note
I also have some [Apps](markdown/apps.md) and [Games](markdown/games.md) that I frequently use.

## Call to action
If you want to share some ideas you can email me at mail@boseriko.com
