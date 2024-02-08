#!/usr/bin/env fish

set plist $HOME/Library/Containers/com.apple.Notes/Data/Library/Preferences/com.apple.Notes.plist

# TODO: Configure using iCloud after configuring iCloud login
# Notes -> Settings
# [iCloud] Default account

# =======================
# Toolbar for Main Window
# =======================
# Left hand side             Right Hand Side
# Flexible Space | Delete    New Note | Flexible Space | Format | Checklist | Table | Link | Flexible Space | Lock | Share | Search
/usr/libexec/PlistBuddy -c "Delete ':NSToolbar Configuration MainWindowToolbar:TB Item Identifiers'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration MainWindowToolbar:TB Item Identifiers' array" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:0' string 'FoldersToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:1' string 'NSToolbarSidebarTrackingSeparatorItemIdentifier'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:2' string 'NSToolbarFlexibleSpaceItem'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:3' string 'DeleteToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:4' string 'NoteListEditorSeparatorToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:5' string 'NewNoteToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:6' string 'NSToolbarFlexibleSpaceItem'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:7' string 'FormatToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:8' string 'ChecklistToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:9' string 'TableToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:10' string 'LinkToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:11' string 'NSToolbarFlexibleSpaceItem'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:12' string 'LockToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:13' string 'CollaborationToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration MainWindowToolbar:TB Item Identifiers:14' string 'SearchToolbarItem'" $plist
# [Icon and Text] Show (default: Icon Only)
/usr/libexec/PlistBuddy -c "Delete ':NSToolbar Configuration MainWindowToolbar:TB Display Mode'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration MainWindowToolbar:TB Display Mode' integer 1" $plist
# =======================
# Boilerplate Necesstiies
# =======================
/usr/libexec/PlistBuddy -c "Delete ':NSToolbar Configuration MainWindowToolbar:TB Icon Size Mode'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration MainWindowToolbar:TB Icon Size Mode' integer 1" $plist
/usr/libexec/PlistBuddy -c "Delete ':NSToolbar Configuration MainWindowToolbar:TB Is Shown'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration MainWindowToolbar:TB Is Shown' bool true" $plist
/usr/libexec/PlistBuddy -c "Delete ':NSToolbar Configuration MainWindowToolbar:TB Size Mode'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration MainWindowToolbar:TB Size Mode' integer 1" $plist


# ==============================
# Toolbar for Single Note Window
# ==============================
# Delete | Space | Format | Checklist | Table | Link | Space | Lock | Share 
/usr/libexec/PlistBuddy -c "Delete ':NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Item Identifiers'" $plist  &> /dev/null
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Item Identifiers' array" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Item Identifiers:0' string 'DeleteToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Item Identifiers:1' string 'NSToolbarSpaceItem'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Item Identifiers:2' string 'FormatToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Item Identifiers:3' string 'ChecklistToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Item Identifiers:4' string 'TableToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Item Identifiers:5' string 'LinkToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Item Identifiers:6' string 'NSToolbarSpaceItem'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Item Identifiers:7' string 'LockToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Item Identifiers:8' string 'CollaborationToolbarItem'" $plist
# [Icon and Text] Show (default: Icon Only)
/usr/libexec/PlistBuddy -c "Delete ':NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Display Mode'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Display Mode' integer 1" $plist
# =======================
# Boilerplate Necesstiies
# =======================
/usr/libexec/PlistBuddy -c "Delete ':NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Icon Size Mode'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Icon Size Mode' integer 1" $plist
/usr/libexec/PlistBuddy -c "Delete ':NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Is Shown'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Is Shown' bool true" $plist
/usr/libexec/PlistBuddy -c "Delete ':NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Size Mode'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration ICMSingleNoteWindowToolbarIdentifier:TB Size Mode' integer 1" $plist
