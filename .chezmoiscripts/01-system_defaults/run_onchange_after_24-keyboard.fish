#!/usr/bin/env fish

# [Fast] Key repeat rate (default: 5)
defaults write -g KeyRepeat -int 2 # * Working
# [Short] Delay until repeat (default: 30)
defaults write -g InitialKeyRepeat -int 15 # * Working

# ==================
# Keyboard Shortcuts
# ==================
# [Modifier Keys] Swap Control and Capslock # * Working
defaults -currentHost write -g com.apple.keyboard.modifiermapping.0-0-0 -array-add '
<dict>
  <key>HIDKeyboardModifierMappingDst</key>
  <integer>30064771129</integer>
  <key>HIDKeyboardModifierMappingSrc</key>
  <integer>30064771296</integer>
</dict>'
defaults -currentHost write -g com.apple.keyboard.modifiermapping.0-0-0 -array-add '
<dict>
  <key>HIDKeyboardModifierMappingDst</key>
  <integer>30064771129</integer>
  <key>HIDKeyboardModifierMappingSrc</key>
  <integer>30064771300</integer>
</dict>'
defaults -currentHost write -g com.apple.keyboard.modifiermapping.0-0-0 -array-add '
<dict>
  <key>HIDKeyboardModifierMappingDst</key>
  <integer>30064771300</integer>
  <key>HIDKeyboardModifierMappingSrc</key>
  <integer>30064771129</integer>
</dict>'
