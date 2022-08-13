#!/usr/bin/env sh

git clone https://github.com/pipeseroni/pipes.sh.git ~/.pipes
(cd ~/.pipes && sudo make install)
echo "Installing: pipes.sh has been installed."
