# dotfiles
### To Kick Start the Install on a Mac
```shell
zsh -c "$(curl https://raw.githubusercontent.com/akshatpradhan/dotfiles/system_defaults/docs/kickstart.zsh)"
```

### Open a new tab to enable fish

### To Install Packages

```shell
eval (/opt/homebrew/bin/brew shellenv) 
chezmoi init --apply akshatpradhan --branch system_defaults
```
### To reset packages to just the core

```
brew bundle cleanup --force --file=~/.Brewfile.core
chezmoi state delete-bucket --bucket=entryState
```
### WIP
```
defaults read > defaults_read && defaults read -g > defaults_read_g && defaults -currentHost read > defaults_read_currenthost && 
defaults -currentHost read -g > defaults_read_current_host_g
```