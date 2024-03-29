#!/usr/bin/env fish
# ======================
# Control Center Modules
# ======================
# [Dont] Wi-fi (default: Show)
defaults write com.apple.controlcenter "NSStatusItem Visible WiFi" -bool false # * Working
defaults -currentHost write com.apple.controlcenter WiFi -int 8                # * Working
# [Dont] Sound (default: Active)
defaults -currentHost write com.apple.controlcenter Sound -int 8 # * Working
# [Dont] Now Playing (default: Active)
defaults -currentHost write com.apple.controlcenter NowPlaying -int 8 # * Working

# =============
# Other Modules
# =============
# [Control Center] Music Recognition (default: off)
defaults -currentHost write com.apple.controlcenter MusicRecognition -int 9 # * Working
# [Control Center] Hearing (default: off)
defaults -currentHost write com.apple.controlcenter Hearing -int 1 # * Working

# =============
# Menu Bar Only
# =============
# Clock Options
# [x] Announce the time (default: off)
defaults write com.apple.speech.synthesis.general.prefs TimeAnnouncementPrefs -dict-add "TimeAnnouncementsEnabled" -bool true # * Working
defaults write com.apple.speech.synthesis.general.prefs TimeAnnouncementPrefs -dict-add "TimeAnnouncementsPhraseIdentifier" -string "ShortTime" # * Working
# [.25] Use custom volume (default: .5)
/usr/libexec/PlistBuddy -c "Add :TimeAnnouncementPrefs:TimeAnnouncementsVoiceSettings:CustomVolume real 0.25" ~/Library/Preferences/com.apple.speech.synthesis.general.prefs.plist # * Working
# [Dont] Spotlight (default: Show)
defaults -currentHost write com.apple.Spotlight MenuItemHidden -bool true # * Working
# [Show] Time Machine (default: Dont)
defaults write com.apple.systemuiserver "NSStatusItem Visible com.apple.menuextra.TimeMachine" -bool true                 # * Working
defaults write com.apple.systemuiserver menuExtras -array-add "/System/Library/CoreServices/Menu Extras/TimeMachine.menu" # * Working
# TODO: Automate VPN for NextDNS
# [Dont] VPN (default: Dont)
