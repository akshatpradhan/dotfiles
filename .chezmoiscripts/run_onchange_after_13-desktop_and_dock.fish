#!/usr/bin/env fish

# Dock
# [36] Size
defaults write com.apple.dock tilesize -int 36 # Working

# [72] Magnification (default: off)
defaults write com.apple.dock magnification -bool true # Working
defaults write com.apple.dock largesize -int 72        # Working

# [Left] Position on screen (default: bottom)
defaults write com.apple.dock orientation -string "left" # Working

# [x] Minimize windows into application icon (default: off) (turned off)
# defaults write com.apple.dock minimize-to-application -bool true

# [ ] Show suggested and recent apps in Dock (default: on) (Turned off)
# defaults write com.apple.dock show-recents -bool false

# Desktop & Stage Manager
# [x] Show items on Desktop (default: on) and in Stage Manager (default: off)

# [x] Stage Manager (default: off)
# //! Doesn't Work
defaults write com.apple.WindowManager GloballyEnabled -bool true
/usr/libexec/PlistBuddy -c "Delete ':GloballyEnabled'" -c "Add ':GloballyEnabled' bool 'true'" "$HOME/Library/Preferences/com.apple.WindowManager.plist"
/usr/libexec/PlistBuddy -c "Delete ':GloballyEnabledEver'" -c "Add ':GloballyEnabledEver' bool 'true'" "$HOME/Library/Preferences/com.apple.WindowManager.plist"

# [x] Show recent apps in stage manager (default: off)
/usr/libexec/PlistBuddy -c "Delete ':HideDesktop'" -c "Add ':HideDesktop' bool 'false'" "$HOME/Library/Preferences/com.apple.WindowManager.plist"
/usr/libexec/PlistBuddy -c "Delete ':AutoHide'" -c "Add ':AutoHide' bool 'false'" "$HOME/Library/Preferences/com.apple.WindowManager.plist"

# [One at a Time] Show windows from an application (default: all at once)
/usr/libexec/PlistBuddy -c "Delete ':AppWindowGroupingBehavior'" -c "Add ':AppWindowGroupingBehavior' integer '0'" "$HOME/Library/Preferences/com.apple.WindowManager.plist"

# Windows
# - [always] Prefer tabs when opening documents (default: In Full Screen)
defaults read -g AppleWindowTabbingMode -string "always" # Working

# Mission Control
# - [ ] Automatically rearrange Spaces based on most recent use (default: on)
defaults write com.apple.dock "mru-spaces" -bool "false" # Working

# Delete everything from the dock
defaults write com.apple.dock persistent-apps -array # Working

# [Start Screen Saver] Top Left Corner (default: off)
defaults write com.apple.dock wvous-tl-corner -int 5 # Working

# dock icons of hidden (⌘ + H) applications are translucent (default: off)
defaults write com.apple.dock showhidden -bool true

# Investigate the use of stacks in the dock (for example, RECENT, CS225, and CS233 could come there. Is it useful?)
