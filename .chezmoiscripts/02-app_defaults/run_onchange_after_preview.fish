#!/usr/bin/env fish

set plist $HOME/Library/Containers/com.apple.Preview/Data/Library/Preferences/com.apple.Preview.plist

# ======
# Images
# ======
# [Open all files in one window] When opening files (default: Open groups of files in the same window)
defaults write com.apple.Preview "PVImageOpeningMode" -int 0
# /usr/libexec/PlistBuddy -c "Delete ':PVImageOpeningMode'" -c "Add ':PVImageOpeningMode' integer '0'" $plist

# ===
# PDF
# ===
# [ ] Add name to annotations (default: on)
defaults write com.apple.Preview "PVGeneralUseUserName" -bool false
# /usr/libexec/PlistBuddy -c "Delete ':PVGeneralUseUserName'" -c "Add ':PVGeneralUseUserName' bool 'false'" $plist

# ====
# View
# ====
# ! Manually configure continous scroll  (cmd + 1)
# [x] Show Tab Bar (default: off)
defaults write com.apple.Preview "NSWindowTabbingShoudShowTabBarKey-PVWindow-PVWindowController-PVWindowController-VT-FS" -bool true
# /usr/libexec/PlistBuddy -c "Delete ':NSWindowTabbingShoudShowTabBarKey-PVWindow-PVWindowController-PVWindowController-VT-FS'" -c "Add ':NSWindowTabbingShoudShowTabBarKey-PVWindow-PVWindowController-PVWindowController-VT-FS' bool 'true'" $plist
# [x] Show Thumbnails (default: Hide Sidebar)
defaults write com.apple.Preview "PVSidebarViewModeForNewDocuments" -int 1
#/usr/libexec/PlistBuddy -c "Delete ':PVSidebarViewModeForNewDocuments'" -c "Add ':PVSidebarViewModeForNewDocuments' integer '1'" $plist


# =======================
# Toolbar for Main Window
# =======================
# Markup | Highlight | Form Filling | Actual Size | Share | Page | Search
/usr/libexec/PlistBuddy -c "Delete 'NSToolbar Configuration CommonToolbar_v5.1:TB Item Identifiers'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration CommonToolbar_v5.1:TB Item Identifiers' array" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration CommonToolbar_v5.1:TB Item Identifiers:0' string 'view'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration CommonToolbar_v5.1:TB Item Identifiers:1' string 'edit_banner'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration CommonToolbar_v5.1:TB Item Identifiers:2' string 'markup'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration CommonToolbar_v5.1:TB Item Identifiers:3' string 'form_filling'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration CommonToolbar_v5.1:TB Item Identifiers:4' string 'actual_size'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration CommonToolbar_v5.1:TB Item Identifiers:5' string 'share'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration CommonToolbar_v5.1:TB Item Identifiers:6' string 'goto_page'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration CommonToolbar_v5.1:TB Item Identifiers:7' string 'search'" $plist
# [Icon and Text] Show (default: Icon Only)
/usr/libexec/PlistBuddy -c "Delete ':NSToolbar Configuration CommonToolbar_v5.1:TB Display Mode'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration CommonToolbar_v5.1:TB Display Mode' integer '1'" $plist

