#!/usr/bin/env zsh

elevate_root_access() {
  if ! sudo -n true 2>/dev/null; then
    print "This script needs administrative privileges to run."
    print "Please enter your password or ensure you've recently authenticated with 'sudo'."
    sudo -v

    if ! sudo -n true 2>/dev/null; then
      print "\nUnable to gain administrative privileges. Exiting now."
      exit 1
    fi
    print
  fi
}

install_homebrew() {
  print "Installing Homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

install_rosetta() {
  print "Installing Rosetta..."
  sudo /usr/sbin/softwareupdate --install-rosetta --agree-to-license
}

install_mas() {
  print "Installing Mac App Store CLI..."
  eval "$(/opt/homebrew/bin/brew shellenv)"
  brew install mas
}

install_chezmoi() {
  print "Installing Chezmoi..."
  eval "$(/opt/homebrew/bin/brew shellenv)"
  brew install chezmoi
}

# =========
# 1Password
# =========
## Appearance
# [x] Categories (default: off)
## Advanced
# [ ] Keep item detail windows on top (default: on)
## Developer
# [x] Integrate with 1Password CLI (default: off)

install_1password() {
  print "Installing 1Password..."
  eval "$(/opt/homebrew/bin/brew shellenv)"
  brew install 1password
  cat <<EOF >"$HOME/Library/Group Containers/2BUA8C4S2C.com.1password/Library/Application Support/1Password/Data/settings/settings.json"
{
  "version": 1,
  "security.authenticatedUnlock.enabled": true,  
  "security.authenticatedUnlock.appleTouchId": true,  

  "privacy.checkHibp": false,
  "updates.autoUpdate": true,
  "updates.updateChannel": "PRODUCTION",


  "app.defaultVaultForSaving": "\"CurrentVaultOrFallback\"",
  "sidebar.showCategories": true,

  "passwordGenerator.size.characters": 15,
  "passwordGenerator.includeSymbols": true,
  "sshAgent.sshAuthorizatonModel": "application",
  "sshAgent.promotionToastDismissed": true,

  "app.trayAction": "mainWindow",
  "ui.ItemDetailWindowsOnTop": false,
  "developers.cliSharedLockState.enabled": true,
  "authTags": { }
}
EOF
}

install_fish() {
  print "Installing Fish..."
  eval "$(/opt/homebrew/bin/brew shellenv)"
  brew install fish
  echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
  chsh -s /opt/homebrew/bin/fish
  print "Open a new terminal window to use fish as the default shell."
}

open_apps() {
  print "Opening Apps..."
  open /Applications/Photos.app
  open /System/Applications/Mail.app
  open /System/Applications/Preview.app
  open /System/Applications/Reminders.app
  open /Applications/1Password.app
}

close_apps() {
  print "Closing Apps..."
  osascript -e 'quit app "Photos"'
  osascript -e 'quit app "Mail"'
  osascript -e 'quit app "Preview"'
  osascript -e 'quit app "Reminders"'
  osascript -e 'quit app "1Password"'
}

elevate_root_access
install_homebrew
sudo -v
# install_rosetta
# install_mas
install_chezmoi
install_1password
sudo -v
install_fish
open_apps
print "Remember to give full disk access to Terminal.app"
print "Remember to launch 1Password and sign in"

open "x-apple.systempreferences:com.apple.preference.security?Privacy_AllFiles"

# TODO: Move to an upgrade.sh script
# install_system_updates() {
#   print "Installing System Updates..."
#   sudo /usr/sbin/softwareupdate --all --install --force
# }

# install_system_updates
