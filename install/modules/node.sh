#!/usr/bin/env sh

# Install Yarn (https://github.com/yarnpkg/yarn)
npm install --global yarn

# Install NVM (https://github.com/nvm-sh/nvm)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | sh
echo "Installing: NVM has been installed."

# Set Node global version (https://github.com/nvm-sh/nvm)
nvm install 18
nvm use 18
echo "Installing: Set Node to the LTS version."

# Install packages using NPM (https://nodejs.org/)
yarn global add http-server         # A simple zero-configuration command-line http server (https://github.com/http-party/http-server)
yarn global add live-server         # A simple development http server with live reload capability (https://github.com/tapio/live-server)
yarn global add ngrok               # Introspected tunnels to localhost (https://github.com/inconshreveable/ngrok)
yarn global add nodemon             # Monitor for any changes in your node.js application and automatically restart the server - perfect for development (https://github.com/remy/nodemon)
yarn global add parrotsay           # The Party Parrot on your terminal (https://github.com/matheuss/parrotsay)
yarn global add speed-test          # Test your internet connection speed and ping using speedtest.net from the CLI (https://github.com/sindresorhus/speed-test)
yarn global add tldr                # Simplified and community-driven man pages (https://github.com/tldr-pages/tldr)
yarn global add ts-node             # TypeScript execution and REPL for node.js (https://github.com/TypeStrong/ts-node)
yarn global add typescript          # TypeScript is a superset of JavaScript that compiles to clean JavaScript output (https://github.com/Microsoft/TypeScript)
yarn global add verdaccio           # A lightweight private npm proxy registry (https://github.com/verdaccio/verdaccio)
yarn global add peerflix            # Peerflix can be used with a magnet link or a torrent file. (https://github.com/mafintosh/peerflix)
yarn global add webtorrent-cli      # WebTorrent is the first BitTorrent client that works in the browser (https://github.com/webtorrent/webtorrent-cli)
yarn global add vercel              # The easiest way to deploy websites (https://github.com/zeit/now)
echo "Installing: NPM apps have been installed."

# Avoid running postinstall scripts from packages
npm config set ignore-scripts true
