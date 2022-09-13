#!/usr/bin/env sh

# Install Hex (https://hex.pm/)
mix local.hex
echo "Installing: Hex (Phoenix) has been installed."

# Install Phoenix Generator (https://hexdocs.pm/phoenix/installation.html)
mix archive.install hex phx_new
echo "Installing: Phoenix Generator has been installed."
