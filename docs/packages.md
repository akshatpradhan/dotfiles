###############
# [cpp]
# taps = []
# brews = ["gcc",
#          "clang-format",
#          "catch2"]
# casks = []
# vscodes = ["ms-vscode.cpptools",
#            "cschlosser.doxdocgen",
#            "jeff-hykin.better-cpp-syntax",
#            "Hyeon.c-math-viewer"]

# [cs_225]
# taps = []
# brews = []
# casks = ["docker"]
# vscodes = ["ms-vscode-remote.remote-containers",
#            "ms-vscode-remote.remote-ssh",
#            "ms-vscode-remote.remote-ssh-edit",
#            "ms-vscode.remote-explorer"]

# [cs_233]
# taps = ["chipsalliance/verible",
#         "randomplum/gtkwave"]
# brews = ["icarus-verilog",
#          "verible"]
# casks = ["gtkwave"]
# vscodes = ["AngaBlue.asm-formatter",
#            "kdarkhan.mips",
#            "teros-technology.teroshdl"] # Verilog Formatter and Syntax Highlight

# [ruby]
# taps = []
# brews = ["rbenv",
#          "ruby-build",
#          "libyaml"]
# casks = []
# vscodes = []

# [python]
# taps = []
# brews = ["pyenv",
#          "xz"]
# casks = []
# vscodes = ["ms-python.black-formatter",
#            "ms-python.python",
#            "ms-python.vscode-pylance",
#            "njpwerner.autodocstring"]
#            # yt-dlp # youtube-dl fork with more features and less bugs

# [manim]
# taps = []
# brews =  ["ffmpeg",
#           "pango",
#           "pkg-config"]
# casks = ["mactex-no-gui"]
# vscodes = ["Rickaym.manim-sideview"]
# pip install manim?
# pip install yt-dlp
# pip install pycairo
# pip install scipy


# [apps]
# taps = []
# brews = []
# casks = ["rectangle", # Window manager
#          "breaktimer", # Pomodoro timer
#          "alt-tab", # Better alt-tab
#          "shottr", # Screenshot tool
#          "obsidian", # Note taking
#          "mullvad-browser", # Private Browser
#          "mimestream", # Email client
#          "discord", # Chat
#          "arc", # Better Chrome
#          "maccy", # Clipboard manager
#          "iina", # Better VLC
#          "adobe-acrobat-pro", #"adobe-acrobat-pro"
#          "zoom", # Video conferencing
#          "motrix", # Torrent client
#          "cyberduck", # File transfer client
#          "skype", # Video conferencing
#          "anylist", # Grocery list
#          "heynote", # Scratchpad for developers
#          "only-switch", # Hidden Menu Bar
#          "github", # GitHub Desktop (Great for squashing Large # of Commits)
#          ]
# vscodes = []


# {{ range .cpp.taps -}}
# tap {{ . | quote }}
# {{ end -}}
# {{ range .cpp.brews -}}
# brew {{ . | quote }}
# {{ end -}}
# {{ range .cpp.casks -}}
# cask {{ . | quote }}
# {{ end -}}
# {{ range .cpp.vscodes -}}
# vscode {{ . | quote }}
# {{ end -}}

# {{ range .cs_225.taps -}}
# tap {{ . | quote }}
# {{ end -}}
# {{ range .cs_225.brews -}}
# brew {{ . | quote }}
# {{ end -}}
# {{ range .cs_225.casks -}}
# cask {{ . | quote }}
# {{ end -}}
# {{ range .cs_225.vscodes -}}
# vscode {{ . | quote }}
# {{ end -}}


# {{ range .cs_233.taps -}}
# tap {{ . | quote }}
# {{ end -}}
# {{ range .cs_233.brews -}}
# brew {{ . | quote }}
# {{ end -}}
# {{ range .cs_233.casks -}}
# cask {{ . | quote }}
# {{ end -}}
# {{ range .cs_233.vscodes -}}
# vscode {{ . | quote }}
# {{ end -}}


# {{ range .ruby.taps -}}
# tap {{ . | quote }}
# {{ end -}}
# {{ range .ruby.brews -}}
# brew {{ . | quote }}
# {{ end -}}
# {{ range .ruby.casks -}}
# cask {{ . | quote }}
# {{ end -}}
# {{ range .ruby.vscodes -}}
# vscode {{ . | quote }}
# {{ end -}}

# {{ range .python.taps -}}
# tap {{ . | quote }}
# {{ end -}}
# {{ range .python.brews -}}
# brew {{ . | quote }}
# {{ end -}}
# {{ range .python.casks -}}
# cask {{ . | quote }}
# {{ end -}}
# {{ range .python.vscodes -}}
# vscode {{ . | quote }}
# {{ end -}}

# {{ range .manim.taps -}}
# tap {{ . | quote }}
# {{ end -}}
# {{ range .manim.brews -}}
# brew {{ . | quote }}
# {{ end -}}
# {{ range .manim.casks -}}
# cask {{ . | quote }}
# {{ end -}}
# {{ range .manim.vscodes -}}
# vscode {{ . | quote }}
# {{ end -}}

# {{ range .apps.taps -}}
# tap {{ . | quote }}
# {{ end -}}
# {{ range .apps.brews -}}
# brew {{ . | quote }}
# {{ end -}}
# {{ range .apps.casks -}}
# cask {{ . | quote }}
# {{ end -}}
# {{ range .apps.vscodes -}}
# vscode {{ . | quote }}
# {{ end -}}
