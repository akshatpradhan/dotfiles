#!/usr/bin/env fish
# ====
# Dock
# ====
# [36] Size (default: 64)
defaults write com.apple.dock tilesize -int 36 # * Working
# [72] Magnification (default: off)
defaults write com.apple.dock magnification -bool true # * Working
defaults write com.apple.dock largesize -int 72        # * Working
# [Left] Position on screen (default: bottom)
defaults write com.apple.dock orientation -string "left" # * Working
# ! Not sure if I want these settings
# [x] Minimize windows into application icon (default: off)
# defaults write com.apple.dock minimize-to-application -bool true
# [ ] Show suggested and recent apps in Dock (default: on)
# defaults write com.apple.dock show-recents -bool false

# =======================
# Desktop & Stage Manager
# =======================
# [x] Show items on Desktop (default: on) and in Stage Manager (default: off)
defaults write com.apple.WindowManager HideDesktop -bool false # * Working
# [One at a Time] Show windows from an application (default: All at Once)
defaults write com.apple.WindowManager AppWindowGroupingBehavior -int 0 # * Working

# =======
# Windows
# =======
# [Always] Prefer tabs when opening documents (default: In Full Screen)
defaults write -g AppleWindowTabbingMode -string "always" # * Working

# ===============
# Mission Control
# ===============
# [ ] Automatically rearrange Spaces based on most recent use (default: on)
defaults write com.apple.dock "mru-spaces" -bool false # * Working

# ===========
# Hot Corners
# ===========
# [Start Screen Saver] Top Left Corner (default: off)
defaults write com.apple.dock wvous-tl-corner -int 5 # * Working

# ==================
# Configure the Dock
# ==================
# Note: This should probably be moved to a dock.fish file in applications
# Empty the dock
defaults write com.apple.dock persistent-apps -array # * Working
# Note: To remove duplicated icons and a folder from the Dock, delete the 'recent-apps' and 'persistent-others' keys. This was determined by comparing the output of 'defaults read com.apple.dock' before and after manual removal.
# defaults delete com.apple.dock recent-apps
# defaults delete com.apple.dock persistent-others

# dock icons of hidden (⌘ + H) applications are translucent (default: off)
defaults write com.apple.dock showhidden -bool true

# TODO: Investigate the potential usefulness of Dock stacks, such as RECENT, CS225, and CS233.
