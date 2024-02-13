#!/usr/bin/env fish

# ============
# New Document
# ============
# Format
# [x] Plain Text (default: Rich Text)
defaults write com.apple.TextEdit RichText -int 0  # * Working

# [x] Wrap to Page (default: off)
defaults write com.apple.TextEdit ShowPageBreaks -bool true  # * Working

# Options
# [ ] Check spelling as you type (default: on)
defaults write com.apple.TextEdit CheckSpellingWhileTyping -bool false  # * Working
# [ ] Correct spelling automatically (default: on)
defaults write com.apple.TextEdit CorrectSpellingAutomatically -bool false  # * Working
# [ ] Show ruler (default: on)
defaults write com.apple.TextEdit ShowRuler -bool false  # * Working
# [ ] Smart quotes (default: on)
defaults write com.apple.TextEdit SmartQuotes -bool false  # * Working
# [ ] Smart dashes (default: on)
defaults write com.apple.TextEdit SmartDashes -bool false  # * Working
# [ ] Text replacement (default: on)
defaults write com.apple.TextEdit TextReplacement -bool false  # * Working

# Apply changes
defaults read com.apple.TextEdit &>/dev/null