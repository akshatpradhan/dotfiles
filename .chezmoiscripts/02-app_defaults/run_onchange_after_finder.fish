#!/usr/bin/env fish

# =======
# General
# =======
# [ ] External disks (default: on)
defaults write com.apple.finder "ShowExternalHardDrivesOnDesktop" -bool "false"
# [ ] CDs, DVDs, and iPods (default: on)
defaults write com.apple.finder "ShowRemovableMediaOnDesktop" -bool "false"

# Manual
# Sidebar: Uncheck and reorder position to the following:"
# -[x] Recents
# -[x] AirDrop
# -[ ] Applications
# -[x] Desktop
# -[x] Documents
# -[x] Downloads
# -[ ] Movies
# -[ ] Music
# -[ ] Pictures
# -[x] akshatpradhan
# -[x] iCloud Drive
# -[x] Shared
# -[x] akshatpradhan's MacBook Air
# -[x] Hard disks
# -[x] External disks
# -[x] CDs, DVDs, and iOS Devices
# -[x] Cloud Storage
# -[x] Bonjour computers
# -[x] Connected servers
# -[x] Recent Tags

# ========
# Advanced
# ========
# [x] Show all filename extensions (default: off)
defaults write -g "AppleShowAllExtensions" -bool "true"
# [ ] Show warning before changing an extension (default: on)
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
# [ ] Show warning before removing from iCloud Drive (default: on)
defaults write com.apple.finder FXEnableRemoveFromICloudDriveWarning -bool false
# [ ] Show warning before emptying the trash (default: on)
defaults write com.apple.finder WarnOnEmptyTrash -bool false
# [x] Keep folders on top in windows when sorting by name (default: off)
defaults write com.apple.finder _FXSortFoldersFirst -bool true
# [x] Keep folders on top on desktop (default: off)
defaults write com.apple.finder _FXSortFoldersFirstOnDesktop -bool true
# [Search the Current Folder] When performing a search (default: Search This Mac)
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# ====
# View
# ====
# [x] Show Path Bar (default: off)
defaults write com.apple.finder "ShowPathbar" -bool "true"
# [x] Show Status Bar (default: off)
defaults write com.apple.finder "ShowStatusBar" -bool "false"

# =================
# Show View Options
# =================

# Global
defaults write com.apple.finder FXPreferredViewStyle Nlsv
# [x] Always open in list view
# Recents
# - [x] Always open in list view
# - [x] Browse in list view
# - [None] Group By:
# - [Date Added] Sort By:
# - [16x16] Icon Size
#  Show Columns:
# - [x] Date Last Opened
# - [x] Date Added
# - [x] Size
# - [x] Kind
# - [x] Use relative dates
# - [x] Calculate all sizes
# - [ ] Show icon preview
# Name | Date Added | Date Last Opened | Kind | Size

# Downloads
# - [x] Always open in list view
# - [x] Browse in list view
# - [Application] Group By:
# - [Date Added] Sort By:
# - [16x16] Icon Size
#  Show Columns:
# - [x] Date Last Opened
# - [x] Date Modified
# - [x] Size
# - [x] Kind
# - [x] Use relative dates
# - [x] Calculate all sizes
# - [ ] Show icon preview
# Name | Date Modified | Date Last Opened | Kind | Size

# Screenshots
# - [x] Always open in list view
# - [x] Browse in list view
# - [Kind] Group By:
# - [Date Added] Sort By:
# - [32x32] Icon Size
#  Show Columns:
# - [x] Date Last Opened
# - [x] Date Added
# - [x] Size
# - [x] Kind
# - [x] Use relative dates
# - [x] Calculate all sizes
# - [x] Show icon preview
# Name | Date Added | Date Last Opened | Kind | Size

# courses
# - [x] Always open in list view
# - [x] Browse in list view
# - [None] Group By:
# - [Name] Sort By:
# - [16x16] Icon Size
#  Show Columns:
# - [x] Date Modified
# - [x] Size
# - [x] Kind
# - [x] Use relative dates
# - [x] Calculate all sizes
# - [ ] Show icon preview
# Name | Date Modified | Kind | Size

# CS233, CS225, etc
# - [x] Always open in list view
# - [x] Browse in list view
# - [Kind] Group By:
# - [Date Added] Sort By:
# - [16x16] Icon Size
#  Show Columns:
# - [x] Date Modified
# - [x] Date Added
# - [x] Size
# - [x] Kind
# - [x] Use relative dates
# - [x] Calculate all sizes
# - [x] Show icon preview
# Name | Date Modified | Date Added | Kind | Size

# akshatpradhan
# - [x] Always open in list view
# - [x] Browse in list view
# - [None] Group By:
# - [Name] Sort By:
# - [16x16] Icon Size
#  Show Columns:
# - [x] Date Modified
# - [x] Date Last Opened
# - [x] Size
# - [x] Kind
# - [x] Use relative dates
# - [x] Calculate all sizes
# - [x] Show icon preview
# Name | Date Modified | Date Last Opened | Kind | Size

# iCloud Drive
# - [x] Always open in list view
# - [x] Browse in list view
# - [None] Group By:
# - [Name] Sort By:
# - [16x16] Icon Size
#  Show Columns:
# - [x] iCloud Status
# - [x] Date Modified
# - [x] Size
# - [x] Kind
# - [x] Use relative dates
# - [x] Calculate all sizes
# - [x] Show icon preview
# Name | iCloud Status | Date Modified | Kind | Size

# Documents
# - [x] Always open in list view
# - [x] Browse in list view
# - [None] Group By:
# - [Name] Sort By:
# - [16x16] Icon Size
#  Show Columns:
# - [x] Date Modified
# - [x] Date Last Opened
# - [x] Size
# - [x] Kind
# - [x] Use relative dates
# - [x] Calculate all sizes
# - [ ] Show icon preview
# Name | Date Modified | Date Last Opened | Kind | Size

# Desktop
# - [x] Always open in list view
# - [x] Browse in list view
# - [None] Group By:
# - [Name] Sort By:
# - [16x16] Icon Size
#  Show Columns:
# - [x] Date Modified
# - [x] Date Last Opened
# - [x] Size
# - [x] Kind
# - [x] Use relative dates
# - [x] Calculate all sizes
# - [x] Show icon preview
# Name | Date Modified | Date Last Opened | Kind | Size

# Desktop
# - [Kind] Stack By:
# - [Date Added] Sort By:
# - [x] Show item info
# - [ ] Show icon preview

# Right click file -> Get Info (Automatically Expands Panes)
defaults write com.apple.finder FXInfoPanesExpanded -dict \
  General -bool true \
  OpenWith -bool true \
  Privileges -bool true

# =======
# Toolbar
# =======
# Back/Forward | View | Group | Preview | Quick Look | Get Info | New Folder | Delete | Share | Search
set plist $HOME/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Delete ':NSToolbar Configuration Browser:TB Item Identifiers'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration Browser:TB Item Identifiers' array" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration Browser:TB Item Identifiers:0' string 'com.apple.finder.BACK'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration Browser:TB Item Identifiers:1' string 'com.apple.finder.SWCH'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration Browser:TB Item Identifiers:2' string 'com.apple.finder.ARNG'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration Browser:TB Item Identifiers:3' string 'com.apple.finder.PTGL'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration Browser:TB Item Identifiers:4' string 'com.apple.finder.QUIK'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration Browser:TB Item Identifiers:5' string 'com.apple.finder.INFO'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration Browser:TB Item Identifiers:6' string 'com.apple.finder.NFLD'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration Browser:TB Item Identifiers:7' string 'com.apple.finder.TRSH'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration Browser:TB Item Identifiers:8' string 'com.apple.finder.SHAR'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration Browser:TB Item Identifiers:9' string 'com.apple.finder.SRCH'" $plist
# [Icon and Text] Show (default: Icon Only)
/usr/libexec/PlistBuddy -c "Delete ':NSToolbar Configuration Browser:TB Display Mode'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration Browser:TB Display Mode' integer 1" $plist

# Show the ~/Library folder
chflags nohidden ~/Library

# Show the /Volumes folder
sudo chflags nohidden /Volumes

# Automatically open a new Finder window when a volume is mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true
