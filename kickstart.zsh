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

install_xcode() {
  print "Installing Command Line Tools for Xcode..."
  /usr/bin/xcode-select --install
  # Pops up a window that requires user interaction
  # sudo /usr/bin/xcodebuild -license accept
}

install_rosetta() {
  print "Installing Rosetta..."
  sudo /usr/sbin/softwareupdate --install-rosetta --agree-to-license
}

install_system_updates() {
  print "Installing System Updates..."
  sudo /usr/sbin/softwareupdate --all --install --force
}

install_homebrew() {
  print "Installing Homebrew..."
  NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}

install_mas() {
  print "Installing Mac App Store CLI..."
  eval "(/opt/homebrew/bin/brew shellenv)"
  brew install mas
}

install_chezmoi() {
  print "Installing Chezmoi..."
  eval "(/opt/homebrew/bin/brew shellenv)"
  brew install chezmoi
}

install_fish() {
  print "Installing Fish..."
  eval "(/opt/homebrew/bin/brew shellenv)"
  brew install fish
  echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
  chsh -s /opt/homebrew/bin/fish
  print "Open a new terminal window to use fish as the default shell."

}

elevate_root_access
install_xcode
install_rosetta
install_system_updates
install_homebrew
install_mas
install_chezmoi
install_fish

# echo "Checking Command Line Tools for Xcode"
# if [ ! -d "$(xcode-select -p)" ]; then
#   xcode-select --install
#   sudo xcodebuild -license accept
# fi
# sudo softwareupdate --install-rosetta --agree-to-license
# sudo softwareupdate --all --install --force

# if test ! "$(which brew)"; then
#   echo "Installing homebrew..."
#   ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#   eval "$(/opt/homebrew/bin/brew shellenv)"
#   brew update
#   brew bundle
#   brew upgrade
# fi

# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

#version 1

#version 2
# Only run if the tools are not installed yet
# To check that try to print the SDK path
# xcode-select -p &>/dev/null
# if [ $? -ne 0 ]; then
#   echo "Command Line Tools for Xcode not found. Installing from softwareupdate…"
#   # This temporary file prompts the 'softwareupdate' utility to list the Command Line Tools
#   touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress
#   PROD=$(softwareupdate -l | grep "\*.*Command Line" | tail -n 1 | sed 's/^[^C]* //')
#   softwareupdate -i "$PROD" --verbose
# else
#   echo "Command Line Tools for Xcode have been installed."
# fi
