#!/usr/bin/env fish

Notes -> Settings
[iCloud] Default account
# =======
# Toolbar
# =======
# Left hand side             Right Hand Side
# Flexible Space | Delete    New Note | Flexible Space |  Format | Checklist | Table | Link | Flexible Space | Lock | Share | Search
set -l plist ~/Library/Containers/com.apple.Notes/Data/Library/Preferences/com.apple.Notes.plist
/usr/libexec/PlistBuddy -c "Delete 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers'" $plist 2>/dev/null
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers' array" $plist
set -l toolbar_items \
  FoldersToolbarItem \
  NSToolbarSidebarTrackingSeparatorItemIdentifier \
  NSToolbarFlexibleSpaceItem \
  NoteListEditorSeparatorToolbarItem \
  NewNoteToolbarItem \
  NSToolbarFlexibleSpaceItem \
  FormatToolbarItem \
  ChecklistToolbarItem \
  TableToolbarItem \
  LinkToolbarItem \
  NSToolbarFlexibleSpaceItem \
  LockToolbarItem \
  CollaborationToolbarItem \
  SearchToolbarItem
for item in $toolbar_items
  /usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:' string '$item'" $plist
end  


# /usr/libexec/PlistBuddy -c "Delete 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers'" $plist
# /usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers' array" $plist
# /usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:' string 'FoldersToolbarItem'" $plist
# /usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:' string 'NSToolbarSidebarTrackingSeparatorItemIdentifier'" $plist
# /usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:' string 'NSToolbarFlexibleSpaceItem'" $plist
# /usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:' string 'NoteListEditorSeparatorToolbarItem'" $plist
# /usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:' string 'NewNoteToolbarItem'" $plist
# /usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:' string 'NSToolbarFlexibleSpaceItem'" $plist
# /usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:' string 'FormatToolbarItem'" $plist
# /usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:' string 'ChecklistToolbarItem'" $plist
# /usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:' string 'TableToolbarItem'" $plist
# /usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:' string 'LinkToolbarItem'" $plist
# /usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:' string 'NSToolbarFlexibleSpaceItem'" $plist
# /usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:' string 'LockToolbarItem'" $plist
# /usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:' string 'CollaborationToolbarItem'" $plist
# /usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:' string 'SearchToolbarItem'" $plist
















# Quick Notes
# View -> Customize Toolbar
# Delete | Space | Format | Checklist | Table | Space | Link | Media | Lock