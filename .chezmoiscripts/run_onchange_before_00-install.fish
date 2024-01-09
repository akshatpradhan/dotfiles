#!/usr/bin/env fish
eval "$(/opt/homebrew/bin/brew shellenv)"
echo '
{{ range .core.taps -}}
tap {{ . | quote }}
{{ end -}}
{{ range .core.brews -}}
brew {{ . | quote }}
{{ end -}}
{{ range .core.casks -}}
cask {{ . | quote }}
{{ end -}}
{{ range .core.vscodes -}}
vscode {{ . | quote }}
{{ end -}}

{{ range .ide.taps -}}
tap {{ . | quote }}
{{ end -}}
{{ range .ide.brews -}}
brew {{ . | quote }}
{{ end -}}
{{ range .ide.casks -}}
cask {{ . | quote }}
{{ end -}}
{{ range .ide.vscodes -}}
vscode {{ . | quote }}
{{ end -}}

' | brew bundle --no-lock --file=/dev/stdin
