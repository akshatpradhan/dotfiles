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
chezmoi init akshatpradhan;
chezmoi cd;
git switch system_defaults;
chezmoi -v apply;
chezmoi -v update;
```

## Reset Packages to Core
To revert to core packages only:
```
brew bundle cleanup --force --file=~/.Brewfile.core
chezmoi state delete-bucket --bucket=entryState
```

## Work In Progress (WIP)
Run the following command to capture various defaults:
```
defaults read > defaults_read && defaults read -g > defaults_read_g && defaults -currentHost read > defaults_read_currenthost &&
defaults -currentHost read -g > defaults_read_current_host_g
```
