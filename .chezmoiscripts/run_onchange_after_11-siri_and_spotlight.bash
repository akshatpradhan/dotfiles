#!/usr/bin/env bash
# Siri & Spotlight
# Search Results
# [ ] Contacts (default: on)
# [ ] Fonts (default: on)
# [ ] Movies (default: on)
# [ ] Music (default: on)
# [ ] Tips (default: on)
# [ ] Websites (default: on)

# Not Working
defaults write com.apple.Spotlight orderedItems -array
defaults write com.apple.Spotlight orderedItems -array-add \
  '{"enabled"=1;"name"="APPLICATIONS";}' \
  '{"enabled"=1;"name"="MENU_EXPRESSION";}' \
  '{"enabled"=0;"name"="CONTACT";}' \
  '{"enabled"=1;"name"="MENU_CONVERSION";}' \
  '{"enabled"=1;"name"="MENU_DEFINITION";}' \
  '{"enabled"=1;"name"="DOCUMENTS";}' \
  '{"enabled"=1;"name"="EVENT_TODO";}' \
  '{"enabled"=1;"name"="DIRECTORIES";}' \
  '{"enabled"=0;"name"="FONTS";}' \
  '{"enabled"=1;"name"="IMAGES";}' \
  '{"enabled"=1;"name"="MESSAGES";}' \
  '{"enabled"=0;"name"="MOVIES";}' \
  '{"enabled"=0;"name"="MUSIC";}' \
  '{"enabled"=1;"name"="MENU_OTHER";}' \
  '{"enabled"=1;"name"="PDF";}' \
  '{"enabled"=1;"name"="PRESENTATIONS";}' \
  '{"enabled"=1;"name"="MENU_SPOTLIGHT_SUGGESTIONS";}' \
  '{"enabled"=1;"name"="SPREADSHEETS";}' \
  '{"enabled"=1;"name"="SYSTEM_PREFS";}' \
  '{"enabled"=0;"name"="TIPS";}' \
  '{"enabled"=1;"name"="BOOKMARKS";}'

# Load new settings before rebuilding the index
killall mds >/dev/null 2>&1

# Make sure indexing is enabled for the main volume
sudo mdutil -i on / >/dev/null

# Rebuild the index from scratch
sudo mdutil -E / >/dev/null
