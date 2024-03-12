#!/usr/bin/env sh

# Update and Upgrade apt
sudo apt update -y && sudo apt upgrade -y                                                          # Update and upgrade Ubuntu

# Install packages
sudo apt install -y stow                                                                           # GNU Stow is a symlink farm manager (https://www.gnu.org/software/stow/)
sudo apt install -y zsh                                                                            # Zsh is a shell designed for interactive use (http://www.zsh.org/)
sudo apt install -y rbenv                                                                          # Groom your app’s Ruby environment (https://github.com/rbenv/rbenv)
sudo apt install -y figlet                                                                         # FIGlet is a program for making large letters out of ordinary text (http://www.figlet.org/)
sudo apt install -y fortune                                                                        # Fortune CLI (https://gist.github.com/zlorb/4a3eff8981fcec8ca1c7)
sudo apt install -y tmux                                                                           # tmux source code (https://github.com/tmux/tmux)
sudo apt install -y ripgrep                                                                        # ripgrep recursively searches directories for a regex pattern while respecting your gitignore (https://github.com/BurntSushi/ripgrep)

# PostgreSQL, also known as Postgres, is a free and open-source relational database management system (https://www.postgresql.org)
sudo apt install -y postgresql
sudo apt install -y postgresql-contrib

# Redis is an in-memory database (https://github.com/redis/redis)
curl -fsSL https://packages.redis.io/gpg | sudo gpg --dearmor -o /usr/share/keyrings/redis-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/redis-archive-keyring.gpg] https://packages.redis.io/deb $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/redis.list
sudo apt update -y; sudo apt install -y redis;

# Python is an interpreted, interactive, object-oriented programming language (https://www.python.org/)
sudo apt install -y python3-pip
sudo apt install -y python-is-python3

# Node.js® is a JavaScript runtime built on Chrome's V8 JavaScript engine (https://nodejs.org/en/)
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt install -y nodejs

echo "Installing: Apt apps have been installed."
