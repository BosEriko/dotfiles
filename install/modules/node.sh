#!/usr/bin/env sh

# Install Yarn (https://github.com/yarnpkg/yarn)
npm install --global yarn

# Install fnm (https://github.com/Schniz/fnm)
curl -fsSL https://fnm.vercel.app/install | bash
echo "Installing: fnm has been installed."

# Install packages using NPM (https://nodejs.org/)
yarn global add ngrok                       # Introspected tunnels to localhost (https://github.com/inconshreveable/ngrok)
yarn global add webtorrent-cli              # WebTorrent is the first BitTorrent client that works in the browser (https://github.com/webtorrent/webtorrent-cli)
echo "Installing: NPM apps have been installed."

# Avoid running postinstall scripts from packages
npm config set ignore-scripts true
