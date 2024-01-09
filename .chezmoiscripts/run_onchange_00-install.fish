#!/usr/bin/env fish
eval (/opt/homebrew/bin/brew shellenv)

echo '{{ range .packages.brews -}}
brew {{ . | quote }}
{{ end -}}
{{ range .packages.casks -}}
cask {{ . | quote }}
{{ end -}}' | brew bundle --no-lock --file=/dev/stdin