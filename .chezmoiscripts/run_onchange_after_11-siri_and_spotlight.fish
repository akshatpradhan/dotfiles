#!/usr/bin/env fish

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
set plist "$HOME/Library/Preferences/com.apple.Spotlight.plist"

# Format: 'Name' <Enabled/Disabled>
set items 'APPLICATIONS' true 'MENU_EXPRESSION' true 'CONTACT' false \
          'MENU_CONVERSION' true 'MENU_DEFINITION' true 'DOCUMENTS' true \
          'EVENT_TODO' true 'DIRECTORIES' true 'FONTS' false 'IMAGES' true \
          'MESSAGES' true 'MOVIES' false 'MUSIC' false 'MENU_OTHER' true \
          'PDF' true 'PRESENTATIONS' true 'MENU_SPOTLIGHT_SUGGESTIONS' true \
          'SPREADSHEETS' true 'SYSTEM_PREFS' true 'TIPS' false 'BOOKMARKS' true

/usr/libexec/PlistBuddy -c "Add :orderedItems array" $plist
for i in (seq 1 2 (count $items))
  set name $items[$i]
  set enabled $items[(math $i + 1)]
  set index (math "(($i - 1) / 2)")

  /usr/libexec/PlistBuddy -c "Add :orderedItems:$index dict" $plist
  /usr/libexec/PlistBuddy -c "Add :orderedItems:$index:enabled bool $enabled" $plist
  /usr/libexec/PlistBuddy -c "Add :orderedItems:$index:name string $name" $plist
end

# Optional: Uncomment the lines below to rebuild the Spotlight index

# Load new settings before rebuilding the index
# killall mds &> /dev/null || true

# Make sure indexing is enabled for the main volume
# sudo mdutil -i on / > /dev/null

# Rebuild the index from scratch
# sudo mdutil -E / > /dev/null

# test
