# dotfiles
### To Kick Start the Install on a Mac
```shell
zsh -c "$(curl https://raw.githubusercontent.com/akshatpradhan/dotfiles/main/kickstart.zsh)"
```

### Open a new tab to enable fish

### To Install Packages

```shell
eval (/opt/homebrew/bin/brew shellenv) 
chezmoi init --apply akshatpradhan
```
### To reset packages to just the core

```
brew bundle cleanup --force --file=~/.Brewfile.core
chezmoi state delete-bucket --bucket=entryState
```
# Notes
Could have done 
`fish -c (curl bootstrap.sh)`