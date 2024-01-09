#!/usr/bin/env fish
eval "$(/opt/homebrew/bin/brew shellenv)"
# brew bundle --no-lock --file=~/Brewfile
set packages core ide cpp

for package in $packages do
    echo '{{ range .$package.taps -}}
    tap {{ . | quote }}
    {{ end -}}
    {{ range .$package.brews -}}
    brew {{ . | quote }}
    {{ end -}}
    {{ range .$package.casks -}}
    cask {{ . | quote }}
    {{ end -}}
    {{ range .$package.vscodes -}}
    vscode {{ . | quote }}
    {{ end -}}' | brew bundle --no-lock --file=/dev/stdin
end




# {{ range .ide.casks -}}
# cask {{ . | quote }}
# {{ end -}}
# {{ range .ide.vscodes -}}
# vscode {{ . | quote }}
# {{ end -}}

# {{ range .cpp.brews -}}
# brews {{ . | quote }}
# {{ end -}}
# {{ range .cpp.brews -}}
# vscode {{ . | quote }}
# {{ end -}}



# {{ range .utils.brews -}}
# brew {{ . | quote }}
# {{ end -}}
# {{ range .utils.casks -}}
# cask {{ . | quote }}
# {{ end -}}
# {{ range .utils.mas -}}





# ' | brew bundle --no-lock --file=/dev/stdin
