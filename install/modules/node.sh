#!/usr/bin/env sh

# Install NVM (https://github.com/nvm-sh/nvm)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | sh
terminal-notifier -title 'Installing' -message 'NVM has been installed.'

# Install packages using NPM (https://nodejs.org/)
yarn global add @vue/cli            #
yarn global add electron            # Build cross-platform desktop apps with JavaScript, HTML, and CSS (https://github.com/electron/electron)
yarn global add electron-packager   #
yarn global add eslint              #
yarn global add expo-cli            #
yarn global add firebase-tools      #
yarn global add gatsby-cli          #
yarn global add gtop                #
yarn global add http-server         #
yarn global add live-server         #
yarn global add neovim              #
yarn global add ngrok               #
yarn global add nodemon             #
yarn global add now                 #
yarn global add parrotsay           #
yarn global add spaceship-prompt    #
yarn global add speed-test          #
yarn global add tldr                #
yarn global add typescript          #
terminal-notifier -title 'Installing' -message 'NPM apps have been installed.'

# Avoid running postinstall scripts from packages
npm config set ignore-scripts true

