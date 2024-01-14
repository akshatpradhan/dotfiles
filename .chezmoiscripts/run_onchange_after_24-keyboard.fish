#!/usr/bin/env fish

# - [Fast] Key repeat Rate
defaults write -g KeyRepeat -int 2 # Working

# - [Short] Delay until repeat
defaults write -g InitialKeyRepeat -int 15 # Working

# Keyboard Shortcuts
# - [Modifier Keys] Switch Control and Capslock"
# Not working (Control isn't remapped to Capslock)

hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000039,"HIDKeyboardModifierMappingDst":0x7000000E0},{"HIDKeyboardModifierMappingSrc":0x7000000E0,"HIDKeyboardModifierMappingDst":0x700000039}]}'
# defaults -currentHost write -g com.apple.keyboard.modifiermapping.0-0-0 -array-add '
# <dict>
#   <key>HIDKeyboardModifierMappingDst</key>
#   <integer>30064771129</integer>
#   <key>HIDKeyboardModifierMappingSrc</key>
#   <integer>30064771300</integer>
#   <key>HIDKeyboardModifierMappingDst</key>
#   <integer>30064771129</integer>
#   <key>HIDKeyboardModifierMappingSrc</key>
#   <integer>30064771296</integer>
#   <key>HIDKeyboardModifierMappingDst</key>
#   <integer>30064771300</integer>
#   <key>HIDKeyboardModifierMappingSrc</key>
#   <integer>30064771129</integer>
# </dict>'
