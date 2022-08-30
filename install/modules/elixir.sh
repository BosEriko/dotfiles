#!/usr/bin/env sh

# Install Hex (https://hex.pm/)
mix local.hex

# Install Phoenix Generator (https://hexdocs.pm/phoenix/installation.html)
mix archive.install hex phx_new
