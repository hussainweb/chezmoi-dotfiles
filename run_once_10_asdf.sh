#!/usr/bin/env bash

git clone https://github.com/asdf-vm/asdf.git ~/.asdf 2> /dev/null || true
git -C ~/.asdf checkout "$(git -C ~/.asdf describe --abbrev=0 --tags)" 2> /dev/null || true

cp ~/.asdf/completions/asdf.fish ~/.config/fish/completions
