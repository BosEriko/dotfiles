#!/usr/bin/env sh

# Install NVM (https://github.com/nvm-sh/nvm)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | sh
terminal-notifier -title 'Installing' -message 'NVM has been installed.'

# Set Node global version (https://github.com/nvm-sh/nvm)
nvm install 12.16.1
nvm use 12.16.1
terminal-notifier -title 'Installing' -message 'Set Node to the LTS version.'

# Install packages using NPM (https://nodejs.org/)
yarn global add @vue/cli            # Standard Tooling for Vue.js Development (https://github.com/vuejs/vue-cli)
yarn global add blitz               # Rails-like framework for monolithic, full-stack React apps — built on Next.js (https://github.com/blitz-js/blitz)
yarn global add electron            # Build cross-platform desktop apps with JavaScript, HTML, and CSS (https://github.com/electron/electron)
yarn global add electron-packager   # Customize and package your Electron app with OS-specific bundles (.app, .exe, etc.) via JS or CLI (https://github.com/electron/electron-packager)
yarn global add eslint              # Find and fix problems in your JavaScript code (https://github.com/eslint/eslint)
yarn global add expo-cli            # Tools for making Expo apps (https://github.com/expo/expo-cli)
yarn global add firebase-tools      # The Firebase Command Line Tools (https://github.com/firebase/firebase-tools)
yarn global add gatsby-cli          # The Gatsby command line interface (CLI) (https://github.com/gatsbyjs/gatsby/tree/master/packages/gatsby-cli)
yarn global add gtop                # System monitoring dashboard for terminal (https://github.com/aksakalli/gtop)
yarn global add http-server         # A simple zero-configuration command-line http server (https://github.com/http-party/http-server)
yarn global add jake                # JavaScript build tool, similar to Make or Rake. Built to work with Node.js (https://github.com/jakejs/jake)
yarn global add jake                # JavaScript build tool, similar to Make or Rake. Built to work with Node.js. (https://github.com/jakejs/jake)
yarn global add live-server         # A simple development http server with live reload capability (https://github.com/tapio/live-server)
yarn global add neovim              # Vim-fork focused on extensibility and usability (https://github.com/neovim/neovim)
yarn global add ngrok               # Introspected tunnels to localhost (https://github.com/inconshreveable/ngrok)
yarn global add nodemon             # Monitor for any changes in your node.js application and automatically restart the server - perfect for development (https://github.com/remy/nodemon)
yarn global add now                 # The easiest way to deploy websites (https://github.com/zeit/now)
yarn global add parrotsay           # The Party Parrot on your terminal (https://github.com/matheuss/parrotsay)
yarn global add spaceship-prompt    # A Zsh prompt for Astronauts (https://github.com/denysdovhan/spaceship-prompt)
yarn global add speed-test          # Test your internet connection speed and ping using speedtest.net from the CLI (https://github.com/sindresorhus/speed-test)
yarn global add tldr                # Simplified and community-driven man pages (https://github.com/tldr-pages/tldr)
yarn global add ts-node             # TypeScript execution and REPL for node.js (https://github.com/TypeStrong/ts-node)
yarn global add typescript          # TypeScript is a superset of JavaScript that compiles to clean JavaScript output (https://github.com/Microsoft/TypeScript)
terminal-notifier -title 'Installing' -message 'NPM apps have been installed.'

# Avoid running postinstall scripts from packages
npm config set ignore-scripts true

