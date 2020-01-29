#!/usr/bin/env sh

# Initialize rbenv and set global ruby version (https://github.com/rbenv/rbenv)
rbenv install 2.6.5
rbenv global 2.6.5
rbenv rehash
terminal-notifier -title 'Installing' -message 'rbenv has been initialized.'

