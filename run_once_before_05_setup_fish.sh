#!/usr/bin/env bash

if ! command -v fish &> /dev/null
then
  echo "fish not installed"
  exit 1
fi

# Start fish so that it can create some of the config
fish -c ""
mkdir -p ~/.config/fish/completions

chezmoi completion fish --output ~/.config/fish/completions/chezmoi.fish
