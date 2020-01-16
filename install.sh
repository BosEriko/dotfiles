#!/usr/bin/env sh

# Install Homebrew (https://brew.sh/)
brew help || /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

# Install packages using Homebrew (https://brew.sh/)
brew install antigen
brew install cmake
brew install figlet
brew install fzf
brew install htop
brew install links
brew install neovim
brew install node
brew install python3
brew install ranger
brew install rbenv
brew install sl
brew install terminal-notifier
brew install tmux
brew install tree
brew install yarn
brew install zsh
brew cask install beaker-browser
brew cask install brave-browser
brew cask install figma
brew cask install firefox
brew cask install google-chrome
brew cask install graphiql
brew cask install hyper
brew cask install keycastr
brew cask install motrix
brew cask install typora
brew cask install vscodium
brew install php@7.3; brew install libidn2; brew install libpsl;
brew tap heroku/brew && brew install heroku
brew tap homebrew/cask-fonts && brew cask install font-fira-code
terminal-notifier -title 'Installing' -message 'Brew apps have been installed.'

# Initialize FZF (https://github.com/junegunn/fzf)
$(brew --prefix)/opt/fzf/install
terminal-notifier -title 'Installing' -message 'FZF has been initialized.'

# Cleanup for Homebrew (https://brew.sh/)
brew cleanup
terminal-notifier -title 'Installing' -message 'Brew has been cleaned.'

# Install Plug for Neovim (https://github.com/junegunn/vim-plug)
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Rust (https://www.rust-lang.org/tools/install)
curl https://sh.rustup.rs -sSf | sh
terminal-notifier -title 'Installing' -message 'Rust has been installed.'

# Install Composer (https://getcomposer.org/doc/00-intro.md#globally)
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'a5c698ffe4b8e849a443b120cd5ba38043260d5c4023dbf93e1558871f1f07f58274fc6f4c93bcfd858c6bd0775cd8d1') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer
terminal-notifier -title 'Installing' -message 'Composer has been installed'

# Install Ranger Icons (https://github.com/alexanderjeurissen/ranger_devicons)
git clone https://github.com/alexanderjeurissen/ranger_devicons.git ~/ranger_devicons
cd ~/ranger_devicons
make install
cd ~
rm -rf ~/ranger_devicons
terminal-notifier -title 'Installing' -message 'Ranger Devicons have been installed'

# Install Laravel (https://laravel.com/docs/6.0)
composer global require laravel/installer
terminal-notifier -title 'Installing' -message 'Laravel has been installed.'

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

# Initialize rbenv and set global ruby version (https://github.com/rbenv/rbenv)
rbenv install 2.6.5
rbenv global 2.6.5
rbenv rehash
terminal-notifier -title 'Installing' -message 'rbenv has been initialized.'

# Install packages using Gem (https://rubygems.org/)
gem install befr
gem install bundler
gem install iStats
gem install neovim
gem install rails
terminal-notifier -title 'Installing' -message 'Gem apps have been installed.'

# Install packages using pip (https://www.python.org)
pip3 install --user --upgrade pynvim
terminal-notifier -title 'Installing' -message 'Pip apps have been installed.'

# Make the directories for Personal/Work
mkdir -p ~/Documents/Codes/Work ~/Documents/Codes/Personal
terminal-notifier -title 'Installing' -message 'Work and Personal folder have been created.'

# Install oh-my-zsh (https://github.com/robbyrussell/oh-my-zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
terminal-notifier -title 'Installing' -message 'oh-my-zsh has been installed.'

# Make ZSH the default shell (https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
chsh -s /bin/zsh
terminal-notifier -title 'Installing' -message 'ZSH has been set as the default shell.'

# Generate .zshenv to avoid errors on oh-my-zsh
touch ~/.zshenv
terminal-notifier -title 'Installing' -message '.zshenv has been generated to avoid errors on oh-my-zsh.'

# Install Karabiner Elements (https://github.com/tekezo/Karabiner-Elements)
git clone https://github.com/tekezo/Karabiner-Elements.git ~/karabiner-elements
(cd ~/karabiner-elements && make package)
rm -rf ~/karabiner-elements
terminal-notifier -title 'Installing' -message 'Karabiner Elements has been installed.'

# Install nerd fonts (https://github.com/ryanoasis/nerd-fonts#font-installation)
(cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf)
terminal-notifier -title 'Installing' -message 'Nerd Fonts has been installed.'

# Install the dotfiles
# =====> .gitconfig
rm ~/.gitconfig
ln -s ~/dotfiles/gitconfig ~/.gitconfig
# =====> .hyper.js
rm ~/.hyper.js
ln -s ~/dotfiles/hyper.js ~/.hyper.js
# =====> VSCodium Settings
rm ~/Library/Application\ Support/VSCodium/User/settings.json
ln -s ~/dotfiles/vscodium/settings.json ~/Library/Application\ Support/VSCodium/User/settings.json
# =====> VSCodium Keybindings
rm ~/Library/Application\ Support/VSCodium/User/keybindings.json
ln -s ~/dotfiles/vscodium/keybindings.json ~/Library/Application\ Support/VSCodium/User/keybindings.json
# =====> Generate .zshrc, .tmux.conf and init.vim
sh ~/dotfiles/generate.sh
# Notify the user
terminal-notifier -title 'Installing' -message 'Dotfiles have been linked.'

# Install Vim Extensions
nvim +PlugInstall +qall
terminal-notifier -title 'Installing' -message 'Vim Extensions have been installed.'

# Allow key repeats
defaults write -g ApplePressAndHoldEnabled -bool false
terminal-notifier -title 'Installing' -message 'Repeated key press has been enabled.'

# Install VSCodium Extensions
sh ~/dotfiles/vscodium/extensions.sh
terminal-notifier -title 'Installing' -message 'VSCodium Extensions have been installed.'

# Generate SSH Key
ssh-keygen -C bos.eriko@gmail.com
terminal-notifier -title 'Installing' -message 'SSH Key has been generated.'
