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

install_fish() {
  print "Installing Fish..."
  eval "$(/opt/homebrew/bin/brew shellenv)"
  brew install fish
  echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
  chsh -s /opt/homebrew/bin/fish
  print "Open a new terminal window to use fish as the default shell."
}

elevate_root_access
install_homebrew
# install_rosetta
# install_mas
install_chezmoi
install_fish
print "Remember to give full disk access to Terminal.app"
open "x-apple.systempreferences:com.apple.preference.security"

# TODO: Move to an upgrade.sh script
# install_system_updates() {
#   print "Installing System Updates..."
#   sudo /usr/sbin/softwareupdate --all --install --force
# }

# install_system_updates
