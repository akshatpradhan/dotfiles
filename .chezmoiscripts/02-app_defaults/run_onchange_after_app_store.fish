#!/usr/bin/env fish

# ========
# Settings
# ========
# [ ] In-App Ratings & Reviews (default: on)
defaults write com.apple.AppStore InAppReviewEnabled -bool false # * Working

# Apply changes
defaults read com.apple.AppStore &>/dev/null
