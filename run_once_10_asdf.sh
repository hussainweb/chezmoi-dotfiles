#!/usr/bin/env bash

git clone https://github.com/asdf-vm/asdf.git ~/.asdf || true
git -C ~/.asdf checkout "$(git -C ~/.asdf describe --abbrev=0 --tags)" || true

cp ~/.asdf/completions/asdf.fish ~/.config/fish/completions

asdf plugin add php || true
asdf plugin add python || true
asdf plugin add golang || true
asdf plugin add rust || true
