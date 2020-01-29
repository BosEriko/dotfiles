#!/usr/bin/env sh

# Install NVM (https://github.com/nvm-sh/nvm)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | sh
terminal-notifier -title 'Installing' -message 'NVM has been installed.'

# Install packages using NPM (https://nodejs.org/)
npm install --global @vue/cli
npm install --global electron
npm install --global electron-packager
npm install --global eslint
npm install --global expo-cli
npm install --global firebase-tools
npm install --global gatsby-cli
npm install --global gtop
npm install --global http-server
npm install --global live-server
npm install --global neovim
npm install --global ngrok
npm install --global nodemon
npm install --global now
npm install --global parrotsay
npm install --global spaceship-prompt
npm install --global speed-test
npm install --global tldr
npm install --global typescript
terminal-notifier -title 'Installing' -message 'NPM apps have been installed.'

# Avoid running postinstall scripts from packages
npm config set ignore-scripts true

