
if status is-interactive
  # Commands to run in interactive sessions can go here
  eval "$(/opt/homebrew/bin/brew shellenv)"
  set -gx EDITOR 'code --wait'
  set -gx VISUAL 'code --wait --new-window'
  set -gx PROJECT_PATHS ~/Code # for oh-my-fish/plugin-pj
  set fish_greeting
  set fzf_preview_dir_cmd lsd --all --color=always # for PatrickF1/fzf.fish
  thefuck --alias | source 
  zoxide init fish | source
  # op completion fish | source
  # rbenv init - | source
  # pyenv init - | source
end