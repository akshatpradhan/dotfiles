#!/usr/bin/env fish

# - [Fast] Key repeat Rate
defaults write -g KeyRepeat -int 2 # * Working

# - [Short] Delay until repeat
defaults write -g InitialKeyRepeat -int 15 # * Working

# ! Not Working Configure Manually
# Keyboard Shortcuts
# - [Modifier Keys] Switch Control and Capslock"
# hidutil property --set {"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc": 0x700000039, "HIDKeyboardModifierMappingDst": 0x700000029}]}



## None of these works need to do it manually
# hidutil property --set '{"UserKeyMapping":[{"HIDKeyboardModifierMappingSrc":0x700000039,"HIDKeyboardModifierMappingDst":0x7000000E0},{"HIDKeyboardModifierMappingSrc":0x7000000E0,"HIDKeyboardModifierMappingDst":0x700000039}]}'
defaults -currentHost write -g com.apple.keyboard.modifiermapping.0-0-0 -array-add '
<dict>
  <key>HIDKeyboardModifierMappingDst</key>
  <integer>30064771129</integer>
  <key>HIDKeyboardModifierMappingSrc</key>
  <integer>30064771296</integer>
  <key>HIDKeyboardModifierMappingDst</key>
  <integer>30064771129</integer>
  <key>HIDKeyboardModifierMappingSrc</key>
  <integer>30064771300</integer>
  <key>HIDKeyboardModifierMappingDst</key>
  <integer>30064771300</integer>
  <key>HIDKeyboardModifierMappingSrc</key>
  <integer>30064771129</integer>
</dict>'


# /usr/libexec/PlistBuddy -c "Add ':com.apple.keyboard.modifiermapping.0-0-0:0:HIDKeyboardModifierMappingDst' integer '30064771129'" "$HOME/Library/Preferences/ByHost/.GlobalPreferences.C598B614-0C56-5490-9359-F1455275B926.plist"
# /usr/libexec/PlistBuddy -c "Add ':com.apple.keyboard.modifiermapping.0-0-0:1:HIDKeyboardModifierMappingDst' integer '30064771129'" "$HOME/Library/Preferences/ByHost/.GlobalPreferences.C598B614-0C56-5490-9359-F1455275B926.plist"
# /usr/libexec/PlistBuddy -c "Add ':com.apple.keyboard.modifiermapping.0-0-0:1:HIDKeyboardModifierMappingSrc' integer '30064771129'" "$HOME/Library/Preferences/ByHost/.GlobalPreferences.C598B614-0C56-5490-9359-F1455275B926.plist"
# /usr/libexec/PlistBuddy -c "Add ':com.apple.keyboard.modifiermapping.0-0-0:2:HIDKeyboardModifierMappingSrc' integer '30064771296'" "$HOME/Library/Preferences/ByHost/.GlobalPreferences.C598B614-0C56-5490-9359-F1455275B926.plist"
# /usr/libexec/PlistBuddy -c "Add ':com.apple.keyboard.modifiermapping.0-0-0:1:HIDKeyboardModifierMappingDst' integer '30064771300'" "$HOME/Library/Preferences/ByHost/.GlobalPreferences.C598B614-0C56-5490-9359-F1455275B926.plist"