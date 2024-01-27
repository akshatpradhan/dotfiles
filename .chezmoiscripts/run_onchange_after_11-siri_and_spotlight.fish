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
set plist $HOME/Library/Preferences/com.apple.Spotlight.plist

# Format: 'Name' <Enabled/Disabled>
set items 'APPLICATIONS' true 'MENU_EXPRESSION' true 'CONTACT' false \
          'MENU_CONVERSION' true 'MENU_DEFINITION' true 'DOCUMENTS' true \
          'EVENT_TODO' true 'DIRECTORIES' true 'FONTS' false 'IMAGES' true \
          'MESSAGES' true 'MOVIES' false 'MUSIC' false 'MENU_OTHER' true \
          'PDF' true 'PRESENTATIONS' true 'MENU_SPOTLIGHT_SUGGESTIONS' true \
          'SPREADSHEETS' true 'SYSTEM_PREFS' true 'TIPS' false 'BOOKMARKS' true


# defaults write com.apple.Spotlight orderedItems -array
# defaults write com.apple.Spotlight orderedItems -array-add '{ enabled = 1; name = APPLICATIONS; },'
# defaults write com.apple.Spotlight orderedItems -array-add '{ enabled = 1; name = MENU_EXPRESSION; },'
# defaults write com.apple.Spotlight orderedItems -array-add '{ enabled = 1; name = CONTACT; },'
# defaults write com.apple.Spotlight orderedItems -array-add '{ enabled = 1; name = MENU_CONVERSION; },'
# defaults write com.apple.Spotlight orderedItems -array-add '{ enabled = 1; name = MENU_DEFINITION; },'
# defaults write com.apple.Spotlight orderedItems -array-add '{ enabled = 0; name = DOCUMENTS; },'
# defaults write com.apple.Spotlight orderedItems -array-add '{ enabled = 0; name = EVENT_TODO; },'
# defaults write com.apple.Spotlight orderedItems -array-add '{ enabled = 0; name = DIRECTORIES; },'
# defaults write com.apple.Spotlight orderedItems -array-add '{ enabled = 0; name = FONTS; },'
# defaults write com.apple.Spotlight orderedItems -array-add '{ enabled = 0; name = IMAGES; },'
# defaults write com.apple.Spotlight orderedItems -array-add '{ enabled = 0; name = MESSAGES; },'
# defaults write com.apple.Spotlight orderedItems -array-add '{ enabled = 1; name = MOVIES; },'
# defaults write com.apple.Spotlight orderedItems -array-add '{ enabled = 1; name = MUSIC; },'
# defaults write com.apple.Spotlight orderedItems -array-add '{ enabled = 0; name = MENU_OTHER; },'
# defaults write com.apple.Spotlight orderedItems -array-add '{ enabled = 1; name = PDF; },'
# defaults write com.apple.Spotlight orderedItems -array-add '{ enabled = 1; name = PRESENTATIONS; },'
# defaults write com.apple.Spotlight orderedItems -array-add '{ enabled = 1; name = MENU_SPOTLIGHT_SUGGESTIONS; },'
# defaults write com.apple.Spotlight orderedItems -array-add '{ enabled = 1; name = SPREADSHEETS; },'
# defaults write com.apple.Spotlight orderedItems -array-add '{ enabled = 1; name = SYSTEM_PREFS; },'
# defaults write com.apple.Spotlight orderedItems -array-add '{ enabled = 0; name = TIPS; },'
# defaults write com.apple.Spotlight orderedItems -array-add '{ enabled = 1; name = BOOKMARKS; }'

defaults write com.apple.Spotlight orderedItems -array          
#/usr/libexec/PlistBuddy -c "Add :orderedItems array" $plist
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
killall mds &> /dev/null || true

# Make sure indexing is enabled for the main volume
sudo mdutil -i on / > /dev/null

# Rebuild the index from scratch
sudo mdutil -E / > /dev/null

# test
