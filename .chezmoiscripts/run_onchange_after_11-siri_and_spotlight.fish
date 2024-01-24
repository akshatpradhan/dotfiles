#!/usr/bin/env fish
# Siri & Spotlight
# Search Results
# [ ] Contacts (default: on)
# [ ] Fonts (default: on)
# [ ] Movies (default: on)
# [ ] Music (default: on)
# [ ] Tips (default: on)
# [ ] Websites (default: on)
# ! TEST
set plist "$HOME/Library/Preferences/com.apple.Spotlight.plist"
set items 'APPLICATIONS' true 'MENU_EXPRESSION' true 'CONTACT' false 'MENU_CONVERSION' true 'MENU_DEFINITION' true 'DOCUMENTS' true 'EVENT_TODO' true 'DIRECTORIES' true 'FONTS' false 'IMAGES' true 'MESSAGES' true 'MOVIES' false 'MUSIC' false 'MENU_OTHER' true 'PDF' true 'PRESENTATIONS' true 'MENU_SPOTLIGHT_SUGGESTIONS' true 'SPREADSHEETS' true 'SYSTEM_PREFS' true 'TIPS' false 'BOOKMARKS' true

/usr/libexec/PlistBuddy -c "Add :orderedItems array" $plist

for i in (seq 1 2 (count $items))
    set name $items[$i]
    set enabled $items[(math $i + 1)]
    set index (math "(($i - 1) / 2)")

    /usr/libexec/PlistBuddy -c "Add :orderedItems:$index dict" $plist
    /usr/libexec/PlistBuddy -c "Add :orderedItems:$index:enabled bool $enabled" $plist
    /usr/libexec/PlistBuddy -c "Add :orderedItems:$index:name string $name" $plist
end

# Load new settings before rebuilding the index
# killall mds &> /dev/null || true

# Make sure indexing is enabled for the main volume
# sudo mdutil -i on / > /dev/null

# Rebuild the index from scratch
# sudo mdutil -E / > /dev/null




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
 

