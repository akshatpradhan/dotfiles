#!/usr/bin/env bash

# Dock
# [36] Size
defaults write com.apple.dock tilesize -int 36

# [72] Magnification (default: off)
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock largesize -int 72

# [Left] Position on screen (default: bottom)
defaults write com.apple.dock orientation -string "left"

# [x] Minimize windows into application icon (default: off)
# defaults write com.apple.dock minimize-to-application -bool true

# [ ] Show suggested and recent apps in Dock (default: on)
# defaults write com.apple.dock show-recents -bool false

# Desktop & Stage Manager
# [x] Show items on Desktop (default: on) and in Stage Manager (default: off)

# [x] Stage Manager (default: off)
defaults write com.apple.WindowManager GloballyEnabled -bool true

# [x] Show recent apps in stage manager (default: on)
defaults write com.apple.WindowManager AutoHide -bool true

# [One at a Time] Show windows from an application (default: all at once)

# [Always] Prefer tabs when opening documents  (default: In Full Screen)
defaults write NSGlobalDomain AppleWindowTabbingMode -string "always"

# [Start Screen Saver] Top Left Corner (default: off)
defaults write com.apple.dock wvous-tl-corner -int 5

# dock icons of hidden (⌘ + H) applications are translucent (default: off)
defaults write com.apple.dock showhidden -bool true

# Investigate the use of stacks in the dock (for example, RECENT, CS225, and CS233 could come there. Is it useful?)

# Windows
# - [always] Prefer tabs when opening documents (default: In Full Screen)
defaults read -g AppleWindowTabbingMode -string "always"

# Mission Control
# - [ ] Automatically rearrange Spaces based on most recent use (default: on)
defaults write com.apple.dock "mru-spaces" -bool "false"

# Delete everything from the dock
defaults write com.apple.dock persistent-apps -array
