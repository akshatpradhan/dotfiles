#!/usr/bin/env fish
# Siri & Spotlight
# Search Results
# ! TEST
# [ ] Contacts (default: on)
/usr/libexec/PlistBuddy -c "Set :orderedItems:2:enabled false" ~/Library/Preferences/com.apple.Spotlight.plist
# [ ] Fonts (default: on)
/usr/libexec/PlistBuddy -c "Set :orderedItems:8:enabled false" ~/Library/Preferences/com.apple.Spotlight.plist
# [ ] Movies (default: on)
/usr/libexec/PlistBuddy -c "Set :orderedItems:11:enabled false" ~/Library/Preferences/com.apple.Spotlight.plist
# [ ] Music (default: on)
/usr/libexec/PlistBuddy -c "Set :orderedItems:12:enabled false" ~/Library/Preferences/com.apple.Spotlight.plist
# [ ] Tips (default: on)
/usr/libexec/PlistBuddy -c "Set :orderedItems:19:enabled false" ~/Library/Preferences/com.apple.Spotlight.plist
# [ ] Websites (default: on)
/usr/libexec/PlistBuddy -c "Set :orderedItems:20:enabled false" ~/Library/Preferences/com.apple.Spotlight.plist



# ! Doesn't Work
# defaults write com.apple.Spotlight orderedItems -array
# defaults write com.apple.Spotlight orderedItems -array-add \
#   '{"enabled"=1;"name"="APPLICATIONS";}' \
#   '{"enabled"=1;"name"="MENU_EXPRESSION";}' \
#   '{"enabled"=0;"name"="CONTACT";}' \
#   '{"enabled"=1;"name"="MENU_CONVERSION";}' \
#   '{"enabled"=1;"name"="MENU_DEFINITION";}' \
#   '{"enabled"=1;"name"="DOCUMENTS";}' \
#   '{"enabled"=1;"name"="EVENT_TODO";}' \
#   '{"enabled"=1;"name"="DIRECTORIES";}' \
#   '{"enabled"=0;"name"="FONTS";}' \
#   '{"enabled"=1;"name"="IMAGES";}' \
#   '{"enabled"=1;"name"="MESSAGES";}' \
#   '{"enabled"=0;"name"="MOVIES";}' \
#   '{"enabled"=0;"name"="MUSIC";}' \
#   '{"enabled"=1;"name"="MENU_OTHER";}' \
#   '{"enabled"=1;"name"="PDF";}' \
#   '{"enabled"=1;"name"="PRESENTATIONS";}' \
#   '{"enabled"=1;"name"="MENU_SPOTLIGHT_SUGGESTIONS";}' \
#   '{"enabled"=1;"name"="SPREADSHEETS";}' \
#   '{"enabled"=1;"name"="SYSTEM_PREFS";}' \
#   '{"enabled"=0;"name"="TIPS";}' \
#   '{"enabled"=1;"name"="BOOKMARKS";}'




# /usr/libexec/PlistBuddy -c "Set ':orderedItems:8:enabled' bool 'false'" "$HOME/Library/Preferences/com.apple.Spotlight.plist"
# /usr/libexec/PlistBuddy -c "Set ':orderedItems:11:enabled' bool 'false'" "$HOME/Library/Preferences/com.apple.Spotlight.plist"
# /usr/libexec/PlistBuddy -c "Set ':orderedItems:12:enabled' bool 'false'" "$HOME/Library/Preferences/com.apple.Spotlight.plist"
# /usr/libexec/PlistBuddy -c "Set ':orderedItems:19:enabled' bool 'false'" "$HOME/Library/Preferences/com.apple.Spotlight.plist"
# /usr/libexec/PlistBuddy -c "Set ':orderedItems:20:enabled' bool 'false'" "$HOME/Library/Preferences/com.apple.Spotlight.plist"
 
# Load new settings before rebuilding the index
killall mds &> /dev/null || true

# Make sure indexing is enabled for the main volume
sudo mdutil -i on / > /dev/null

# Rebuild the index from scratch
sudo mdutil -E / > /dev/null
