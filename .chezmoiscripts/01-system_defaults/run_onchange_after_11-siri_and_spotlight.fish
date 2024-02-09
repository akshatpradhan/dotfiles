#!/usr/bin/env fish

set plist $HOME/Library/Preferences/com.apple.Spotlight.plist

# ! SORT of working. The plist changes are applied, but they may not be reflected
# ! in System Preferences even though 'defaults read' shows correct output.
# ==============
# Search Results
# ==============
# [ ] Contacts (default: on)
# [ ] Developer (default: on)
# [ ] Fonts (default: on)
# [ ] Movies (default: on)
# [ ] Music (default: on)
# [ ] Tips (default: on)
# [ ] Websites (default: on)
touch /Applications/Xcode.app
defaults write com.apple.Spotlight orderedItems -array
# /usr/libexec/PlistBuddy -c 'Delete :orderedItems' $plist
# /usr/libexec/PlistBuddy -c 'Add :orderedItems array' $plist

function toggle_search_results
  /usr/libexec/PlistBuddy -c "Add :orderedItems:$argv[1]:enabled bool $argv[3]" $plist
  /usr/libexec/PlistBuddy -c "Add :orderedItems:$argv[1]:name string $argv[2]" $plist
end

set items \
  "0 APPLICATIONS true" \
  "1 MENU_EXPRESSION true" \
  "2 CONTACT false" \
  "3 MENU_CONVERSION true" \
  "4 MENU_DEFINITION true" \
  "5 SOURCE false" \
  "6 DOCUMENTS true" \
  "7 EVENT_TODO true" \
  "8 DIRECTORIES true" \
  "9 FONTS false" \
  "10 IMAGES true" \
  "11 MESSAGES true" \
  "12 MOVIES false" \
  "13 MUSIC false" \
  "14 MENU_OTHER true" \
  "15 PDF true" \
  "16 PRESENTATIONS true" \
  "17 MENU_SPOTLIGHT_SUGGESTIONS true" \
  "18 SPREADSHEETS true" \
  "19 SYSTEM_PREFS true" \
  "20 TIPS false" \
  "21 BOOKMARKS true"

for item in $items
  set fields (string split " " -- $item)
  set index $fields[1]
  set category $fields[2]
  set enabled $fields[3]
  toggle_search_results $index $category $enabled
end

# Apply Changes
defaults read com.apple.Spotlight orderedItems &>/dev/null

# Optional: Uncomment the lines below to rebuild the Spotlight index
# killall Spotlight

# Load new settings before rebuilding the index
# killall mds &> /dev/null || true

# Make sure indexing is enabled for the main volume
# sudo mdutil -i on / > /dev/null

# Rebuild the index from scratch
# sudo mdutil -E / > /dev/null
