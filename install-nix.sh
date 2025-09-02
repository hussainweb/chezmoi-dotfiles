#!/usr/bin/env sh

curl -L https://nixos.org/nix/install | sh -s -- --daemon
mkdir -p ~/.config/nix/
echo "experimental-features = nix-command flakes" > ~/.config/nix/nix.conf
