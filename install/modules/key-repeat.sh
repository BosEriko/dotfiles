#!/usr/bin/env sh

# Allow key repeats
defaults write -g ApplePressAndHoldEnabled -bool false
terminal-notifier -title 'Installing' -message 'Repeated key press has been enabled.'

