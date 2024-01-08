# dotfiles
### To Kick Start the Install on a Mac
`zsh -c "$(curl https://raw.githubusercontent.com/akshatpradhan/dotfiles/main/kickstart.zsh)"`

### Open a new tab to enable fish



### To Install Packages

```shell
eval (/opt/homebrew/bin/brew shellenv) 
chezmoi init --apply akshatpradhan --branch install
```


# Notes
Could have done 
`fish -c (curl bootstrap.sh)`