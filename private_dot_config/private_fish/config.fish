if status is-interactive
  # Commands to run in interactive sessions can go here
  eval "$(/opt/homebrew/bin/brew shellenv)"
  set -gx EDITOR 'code --wait'
  set -gx VISUAL 'code --wait'
  zoxide init fish | source
  # rbenv init - | source
  # pyenv init - | source
end