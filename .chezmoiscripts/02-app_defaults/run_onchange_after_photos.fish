#!/usr/bin/env fish

# =======
# General
# =======
# [ ] Autoplay Videos and Live Photos (default: on)
defaults write com.apple.Photos IPXDefaultAutoplayVideos -bool false # ! NOT WORKING
# [ ] Show Featured Content (default: on)
defaults write com.apple.photos.shareddefaults FeaturedContentAllowed -bool false # * WORKING
# [ ] Show Memories Notification (default: on)
defaults write com.apple.photoanalysisd notificationDisabled -bool true # * WORKING

# ======
# iCloud
# ======
# [x] Download Originals to this Mac (default: Optimize Mac Storage)
defaults write com.apple.photos.shareddefaults downloadAndKeepOriginals -bool true # ! UNTESTED

# Apply Changes
defaults read com.apple.Photos &>/dev/null
