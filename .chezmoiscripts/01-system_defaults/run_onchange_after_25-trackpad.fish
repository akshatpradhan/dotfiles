#!/usr/bin/env fish

# =============
# Point & Click
# =============
# [fast] Tracking speed (default: .6875)
defaults write -g com.apple.trackpad.scaling -float 3.0 # * Working

# =============
# More Gestures
# =============
# [Swipe Down with Three Fingers] App Expose (default: off)
defaults write com.apple.dock showAppExposeGestureEnabled -bool true # * Working
