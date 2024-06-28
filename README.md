# Dotfiles
This is my personal dotfiles for Windows. Feel free to use it or fork it.

## Clone the repository
To start you must first clone the repository. Run the command below on Ubuntu on WSL to clone the repository.
``` sh
git clone --recurse-submodules https://github.com/BosEriko/dotfiles.git ~/.files
```

## Setup Environment Variables
Before running the installation script you first need to setup a few things. Run the command below on Ubuntu on WSL to setup your environment variables.
``` sh
cp ~/.files/zsh/example.env.z.sh ~/.files/zsh/env.z.sh
nano ~/.files/zsh/env.z.sh
```

## Installation Script
After setting up the environment variables you can now proceed to the installation script. Run the command below on Ubuntu on WSL to start installing.
``` sh
source ~/.files/zsh/env.z.sh && ~/.files/install/entry.sh
```

## Call to action
If you want to share some ideas you can email me at boseriko@duck.com.
