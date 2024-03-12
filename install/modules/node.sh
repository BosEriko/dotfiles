#!/usr/bin/env sh

# Install Yarn (https://github.com/yarnpkg/yarn)
npm install --global yarn

# Install fnm (https://github.com/Schniz/fnm)
curl -fsSL https://fnm.vercel.app/install | bash
echo "Installing: fnm has been installed."

# Install packages using NPM (https://nodejs.org/)
yarn global add ngrok                       # Introspected tunnels to localhost (https://github.com/inconshreveable/ngrok)
yarn global add typescript                  # TypeScript is a superset of JavaScript that compiles to clean JavaScript output (https://github.com/Microsoft/TypeScript)
yarn global add typescript-language-server  # Language Server Protocol implementation for TypeScript wrapping tsserver (https://github.com/typescript-language-server/typescript-language-server)
yarn global add webtorrent-cli              # WebTorrent is the first BitTorrent client that works in the browser (https://github.com/webtorrent/webtorrent-cli)
yarn global add neovim                      # Neovim is a project that seeks to aggressively refactor Vim (https://github.com/neovim/neovim)
echo "Installing: NPM apps have been installed."

# Avoid running postinstall scripts from packages
npm config set ignore-scripts true
