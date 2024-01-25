#!/usr/bin/env fish

# =======
# Display
# =======
# [x] Show toolbar button shapes (default: off)
# ! Note: Requires Full Disk Access for Terminal.app (System Settings -> Privacy & Security -> Full Disk Access)
defaults write com.apple.universalaccess showToolbarButtonShapes -bool true # * Working

# =======
# Pointer
# =======
# [1.5] Pointer size (default: 1.0)
# ! Note: Requires Full Disk Access for Terminal.app (System Settings -> Privacy & Security -> Full Disk Access)
defaults write com.apple.universalaccess mouseDriverCursorSize -float 1.5 # * Working
