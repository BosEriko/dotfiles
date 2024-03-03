#!/bin/bash

# Add extra bucket
scoop bucket add extras
scoop bucket add main

# Install Applications
scoop install neovim          # Neovim
scoop install obsidian        # Obsidian
scoop install keepassxc       # KeePassXC
scoop install vscodium        # VSCodium
scoop install gimp            # Gimp
scoop install autohotkey      # AutoHotkey
scoop install taskbarx        # TaskbarX
scoop install powertoys       # PowerToys

# Install Extras
scoop install qutebrowser     # qutebrowser Browser
scoop install min             # min Browser
scoop install vivaldi         # Vivaldi Browser
scoop install obs-studio      # OBS

# Install Fira Mono
scoop bucket add nerd-fonts
scoop install FiraMono-NF
