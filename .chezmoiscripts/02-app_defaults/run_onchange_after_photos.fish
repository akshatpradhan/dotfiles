#!/usr/bin/env fish

# =======
# General
# =======
# [ ] Autoplay Videos and Live Photos (default: on)
defaults write com.apple.Photos IPXDefaultAutoplayVideos -bool false # ! UNTESTED
# [ ] Show Featured Content (default: on)
defaults write com.apple.photos.shareddefaults FeaturedContentAllowed -bool false # ! UNTESTED
# [ ] Show Memories Notification (default: on)
defaults write com.apple.photoanalysisd notificationDisabled -bool true # ! UNTESTED

# ======
# iCloud
# ======
# [x] Download Originals to this Mac (default: Optimize Mac Storage)
defaults write com.apple.photos.shareddefaults downloadAndKeepOriginals -bool true # ! UNTESTED


