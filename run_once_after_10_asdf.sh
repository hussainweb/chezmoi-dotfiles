#!/usr/bin/env fish

if ! command -v asdf &> /dev/null
  echo "asdf not installed. Skipping installing plugins..."
  exit
end

asdf plugin add php || true
asdf plugin add python || true
asdf plugin add golang || true
asdf plugin add rust || true

asdf install python latest
asdf global python latest
