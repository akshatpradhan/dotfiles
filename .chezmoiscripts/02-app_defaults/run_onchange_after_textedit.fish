#!/usr/bin/env fish

# ============
# New Document
# ============
# Format
# [x] Plain Text (default: Rich Text)
defaults write com.apple.TextEdit RichText -int 0  # ! UNTESTED

# [x] Wrap to Page (default: off)
defaults write com.apple.TextEdit ShowPageBreaks -bool true  # ! UNTESTED

# Options
# [ ] Check spelling as you type (default: on)
defaults write com.apple.TextEdit CheckSpellingWhileTyping -bool false  # ! UNTESTED
# [ ] Correct spelling automatically (default: on)
defaults write com.apple.TextEdit CorrectSpellingAutomatically -bool false  # ! UNTESTED
# [ ] Show ruler (default: on)
defaults write com.apple.TextEdit ShowRuler -bool false  # ! UNTESTED
# [ ] Smart quotes (default: on)
defaults write com.apple.TextEdit SmartQuotes -bool false  # ! UNTESTED
# [ ] Smart dashes (default: on)
defaults write com.apple.TextEdit SmartDashes -bool false  # ! UNTESTED
# [ ] Text replacement (default: on)
defaults write com.apple.TextEdit TextReplacement -bool false  # ! UNTESTED

# Apply changes
