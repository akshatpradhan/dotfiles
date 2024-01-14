#!/usr/bin/env fish
# Control Center Modules
# - [Dont] Wi-fi (default: show)
defaults write com.apple.controlcenter "NSStatusItem Visible WiFi" -bool false # Working
defaults -currentHost write com.apple.controlcenter WiFi -int 8                # Working

# - [Dont] Sound (default: active)
defaults -currentHost write com.apple.controlcenter Sound -int 8 # Working

# - [Dont] Now Playing (default: active)
defaults -currentHost write com.apple.controlcenter NowPlaying -int 8 # Working

# Other Modules

# - [Control Center] Music Recognition
defaults -currentHost write com.apple.controlcenter MusicRecognition -int 9 # Working

# - [Control Center] Hearing
defaults -currentHost write com.apple.controlcenter Hearing -int 1 # Working

# Menu Bar Only
# Clock Options
# - [x] Announce the time (default: off)
#! Doesn't Work
defaults write com.apple.speech.synthesis.general.prefs "TimeAnnouncementPrefs" -dict-add "TimeAnnouncementsEnabled" -bool true
launchctl kickstart gui/$UID/com.apple.speech.synthesisserver

# - [Dont] Spotlight (default: Show)

defaults -currentHost write com.apple.Spotlight MenuItemHidden -bool true # Working

# - [Show] Time Machine (default: Dont)
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.TimeMachine" -bool true # Working
defaults write com.apple.systemuiserver menuExtras -array-add "/System/Library/CoreServices/Menu Extras/TimeMachine.menu"

# - [Dont] VPN
