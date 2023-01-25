#!/bin/bash

# Add extra bucket
scoop bucket add extras
scoop bucket add main

# Install Applications
scoop install git             # git
scoop install neovim          # Neovim

# Install Extras
scoop install qutebrowser     # qutebrowser
scoop install obs-studio      # OBS
scoop install autohotkey      # AutoHotkey

# Install Fira Mono
scoop bucket add nerd-fonts
scoop install FiraMono-NF
