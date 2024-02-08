#!/usr/bin/env fish
set plist $HOME/Library/Preferences/com.apple.Spotlight.plist

# ==============
# Search Results
# ==============
# [ ] Contacts (default: on)
# [ ] Fonts (default: on)
# [ ] Movies (default: on)
# [ ] Music (default: on)
# [ ] Tips (default: on)
# [ ] Websites (default: on)

# ! NOT WORKING. On the first run, the plist is not modified.
# ! On subsequent runs, the plist changes are applied, but they may not be reflected
# ! in System Preferences even though 'defaults read' shows correct output.

defaults write com.apple.Spotlight orderedItems -array
# /usr/libexec/PlistBuddy -c 'Delete :orderedItems' $plist
# /usr/libexec/PlistBuddy -c 'Add :orderedItems array' $plist

function toggle_search_result_category

  /usr/libexec/PlistBuddy -c "Add :orderedItems:$argv[1]:enabled bool $argv[3]" $plist
  /usr/libexec/PlistBuddy -c "Add :orderedItems:$argv[1]:name string $argv[2]" $plist
end

set items \
"0 APPLICATIONS true" \
"1 MENU_EXPRESSION true" \
"2 CONTACT false" \
"3 MENU_CONVERSION true" \
"4 MENU_DEFINITION true" \
"5 DOCUMENTS true" \
"6 EVENT_TODO true" \
"7 DIRECTORIES true" \
"8 FONTS false" \
"9 IMAGES true" \
"10 MESSAGES true" \
"11 MOVIES false" \
"12 MUSIC false" \
"13 MENU_OTHER true" \
"14 PDF true" \
"15 PRESENTATIONS true" \
"16 MENU_SPOTLIGHT_SUGGESTIONS true" \
"17 SPREADSHEETS true" \
"18 SYSTEM_PREFS true" \
"19 TIPS false" \
"20 BOOKMARKS true"

for item in $items
  set fields (string split " " -- $item)
  set index $fields[1]
  set category $fields[2]
  set enabled $fields[3]
  toggle_search_result_category $index $category $enabled
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

# test
