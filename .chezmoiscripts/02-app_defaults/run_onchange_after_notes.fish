#!/usr/bin/env fish

# TODO: Configure using iCloud after configuring iCloud login
# Notes -> Settings
# [iCloud] Default account

# =======================
# Toolbar for Main Window
# =======================
# Left hand side             Right Hand Side
# Flexible Space | Delete    New Note | Flexible Space | Format | Checklist | Table | Link | Flexible Space | Lock | Share | Search
set plist $HOME/Library/Containers/com.apple.Notes/Data/Library/Preferences/com.apple.Notes.plist
/usr/libexec/PlistBuddy -c "Delete 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers' array" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:0' string 'FoldersToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:1' string 'NSToolbarSidebarTrackingSeparatorItemIdentifier'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:2' string 'NSToolbarFlexibleSpaceItem'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:3' string 'DeleteToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:4' string 'NoteListEditorSeparatorToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:5' string 'NewNoteToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:6' string 'NSToolbarFlexibleSpaceItem'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:7' string 'FormatToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:8' string 'ChecklistToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:9' string 'TableToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:10' string 'LinkToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:11' string 'NSToolbarFlexibleSpaceItem'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:12' string 'LockToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:13' string 'CollaborationToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:14' string 'SearchToolbarItem'" $plist


# ==============================
# Toolbar for Single Note Window
# ==============================
# Delete | Space | Format | Checklist | Table | Link | Space | Lock | Share 
/usr/libexec/PlistBuddy -c "Delete 'NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Item Identifiers'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Item Identifiers' array" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Item Identifiers:0' string 'DeleteToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Item Identifiers:1' string 'NSToolbarSpaceItem'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Item Identifiers:2' string 'FormatToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Item Identifiers:3' string 'ChecklistToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Item Identifiers:4' string 'TableToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Item Identifiers:5' string 'LinkToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Item Identifiers:6' string 'NSToolbarSpaceItem'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Item Identifiers:7' string 'LockToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Item Identifiers:8' string 'CollaborationToolbarItem'" $plist
