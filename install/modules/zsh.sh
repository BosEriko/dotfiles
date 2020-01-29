#!/usr/bin/env sh

# Install oh-my-zsh (https://github.com/robbyrussell/oh-my-zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
terminal-notifier -title 'Installing' -message 'oh-my-zsh has been installed.'

# Make ZSH the default shell (https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)
chsh -s /bin/zsh
terminal-notifier -title 'Installing' -message 'ZSH has been set as the default shell.'

# Generate .zshenv to avoid errors on oh-my-zsh
touch ~/.zshenv
terminal-notifier -title 'Installing' -message '.zshenv has been generated to avoid errors on oh-my-zsh.'

