#!/usr/bin/env fish

# =======
# Options
# =======
# Save to iCloud Drive > Screenshots (default: Desktop)
# defaults write com.apple.screencapture location -string "$HOME/Library/Mobile Documents/com~apple~CloudDocs/Screenshots"  # ! UNTESTED
# Disable shadow in screenshots (default: off)
defaults write com.apple.screencapture "disable-shadow" -bool "true" # * Working