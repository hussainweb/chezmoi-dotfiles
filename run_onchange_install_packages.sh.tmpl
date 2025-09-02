#!/bin/bash
{{ if eq .chezmoi.os "darwin" -}}
brew bundle --file=/dev/stdin <<EOF
{{ range .packages.homebrew.essential.brews -}}
brew {{ . | quote }}
{{ end -}}
{{ range .packages.homebrew.essential.casks -}}
cask {{ . | quote }}
{{ end -}}
EOF
{{ else if eq .chezmoi.os "linux" -}}
sudo apt update
sudo apt install -y {{ range .packages.apt -}}
{{ . | quote }}
{{ end -}}
{{ end -}}
