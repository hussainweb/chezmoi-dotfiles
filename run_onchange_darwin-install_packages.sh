{{ if eq .chezmoi.os "darwin" -}}
#!/bin/bash

brew bundle --no-lock --file=/dev/stdin <<EOF
{{ range .packages.darwin.brews -}}
brew {{ . | quote }}
{{ end -}}
{{ range .packages.darwin.casks -}}
cask {{ . | quote }}
{{ end -}}
EOF
{{ end -}}
