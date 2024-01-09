#!/usr/bin/env fish
eval "$(/opt/homebrew/bin/brew shellenv)"
# brew bundle --no-lock --file=~/Brewfile

{{ $packages := list
     "core"
     "ide"
     "cpp" -}}

{{ range $package := $packages }}
{{ with index . $package }}
    {{ range .taps -}}
    echo "tap {{ . | quote }}"
    {{ end -}}
    {{ range .brews -}}
    echo "brew {{ . | quote }}"
    {{ end -}}
    {{ range .casks -}}
    echo "cask {{ . | quote }}"
    {{ end -}}
    {{ range .vscodes -}}
    echo "vscode {{ . | quote }}"
    {{ end -}}"
{{ end }}
echo "{{ $package }}" | brew bundle --no-lock --file=/dev/stdin
{{ end }}

# {{ $packages := list
#      "core"
#      "ide"
#      "cpp" -}}

# {{ range $package := $packages }}
#     echo "{{ range .$package.taps -}}
#     tap {{ . | quote }}
#     {{ end -}}
#     {{ range .$package.brews -}}
#     brew {{ . | quote }}
#     {{ end -}}
#     {{ range .$package.casks -}}
#     cask {{ . | quote }}
#     {{ end -}}
#     {{ range .$package.vscodes -}}
#     vscode {{ . | quote }}
#     {{ end -}}" | brew bundle --no-lock --file=/dev/stdin
# {{ end }}




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
