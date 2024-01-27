# dotfiles

## Kickstart Installation on a Mac
Run the following command in the terminal:
```shell
zsh -c "$(curl https://raw.githubusercontent.com/akshatpradhan/dotfiles/system_defaults/docs/kickstart.zsh)"
```

## Enable fish
Open a new terminal tab to activate fish.

## Install Packages
Execute the following commands:
```shell
eval (/opt/homebrew/bin/brew shellenv);
chezmoi --debug init --apply akshatpradhan --branch system_defaults;
```

## Update Packages
```shell
chezmoi --debug -v update;
```

## Reset Packages to Core
```shell
brew bundle cleanup --force --file=~/.Brewfile.core
```

## Clear Chezmoi state
```shell
chezmoi state delete-bucket --bucket=entryState
```

## Work In Progress (WIP)
Run the following command to capture various defaults:
```shell
defaults read > defaults_read && defaults read -g > defaults_read_g && defaults -currentHost read > defaults_read_currenthost &&
defaults -currentHost read -g > defaults_read_current_host_g
```
