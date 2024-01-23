#!/usr/bin/env fish
# Display
# [x] Show toolbar button shapes (default: off)
# ! This command requires granting full disk access to Terminal.app
# ! System Settings -> Privacy & Security -> Full Disk Access -> Add Terminal.app
defaults write com.apple.universalaccess showToolbarButtonShapes -bool true
# /usr/libexec/PlistBuddy -c "Add ':showToolbarButtonShapes' bool 'true'" "$HOME/Library/Preferences/com.apple.universalaccess.plist"

# Pointer
# [1.5] Pointer size
# ! This command requires granting full disk access to Terminal.app
# ! System Settings -> Privacy & Security -> Full Disk Access -> Add Terminal.app
defaults write com.apple.universalaccess mouseDriverCursorSize -float 1.5
# /usr/libexec/PlistBuddy -c "Add ':mouseDriverCursorSize' real '1.500000'" "$HOME/Library/Preferences/com.apple.universalaccess.plist"
