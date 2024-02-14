# dotfiles

##  Run the macOS Installer
### Main
[English] Language
[United States] Select your Country or Region
### Vision
[2nd smallest] Pointer Size
[auto] Appearacnce
### Select Your Wi-Fi Network
[Not now] Migration Assistant
->Sign In with Your Apple ID
[x] Enable Location Services on this Mac
[ ] Share Mac Analytics with Apple
[Voice 1] Select a Siri Voice
[Not Now] Improve Siri & Dictation
Enable TouchID
Sign in to iCloud and App Store, otherwise installing apps via mas won’t work.

## Kickstart Configuration on a Mac
Run the following command in the terminal:
```shell
zsh -c "$(curl https://raw.githubusercontent.com/akshatpradhan/dotfiles/$branch_name/kickstart.zsh)"
```

## Enable 1Password Desktop
Open 1password and enter credentials

## Enable Terminal Automation
Give Terminal full access to Files and Folders

## Close Applications
Close Applications that are opened by the script

## Install Packages
Execute the following commands:
```shell
eval (/opt/homebrew/bin/brew shellenv)
chezmoi init --apply akshatpradhan --branch $branch_name --ssh --output chezmoi-%F-%T.log

```

## Restart
Restart the computer
```sudo shutdown -r now```

## Cleanup
Do the following cleanup steps
### Calendar
[ ] Show Holidays calendar (default: on)

### Wallpaper
[Hawaii Valley]

### Screen Saver
[Hawaii Valley]

## Update Packages
```shell
chezmoi --debug -v update
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
