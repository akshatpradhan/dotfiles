#!/usr/bin/env fish
# Display
# [x] Show toolbar button shapes (default: off)
# //! Doesn't Work:
sudo defaults write com.apple.universalaccess showToolbarButtonShapes -bool true
/usr/libexec/PlistBuddy -c "Delete ':showToolbarButtonShapes'" -c "Add ':showToolbarButtonShapes' bool 'true'" "$HOME/Library/Preferences/com.apple.universalaccess.plist"

# Pointer
# [1.5] Pointer size
# //! Doesn't Work
sudo defaults write com.apple.universalaccess mouseDriverCursorSize -float 1.5
/usr/libexec/PlistBuddy -c "Delete ':mouseDriverCursorSize'" -c "Add ':mouseDriverCursorSize' real '1.500000'" "$HOME/Library/Preferences/com.apple.universalaccess.plist"
