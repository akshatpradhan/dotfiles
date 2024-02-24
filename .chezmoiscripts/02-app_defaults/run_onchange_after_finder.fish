#!/usr/bin/env fish

set plist $HOME/Library/Preferences/com.apple.finder.plist

# =======
# General
# =======
# [ ] External disks (default: on)
defaults write com.apple.finder "ShowExternalHardDrivesOnDesktop" -bool "false" # * Working
# [ ] CDs, DVDs, and iPods (default: on)
defaults write com.apple.finder "ShowRemovableMediaOnDesktop" -bool "false" # * Working

# =======
# Sidebar
# =======
# ! UNTESTED
osascript -e '
activate application "Finder"

tell application "System Events"
	tell process "Finder"
		
		delay 1.0
		select menu bar 1
		click menu bar item "Finder" of menu bar 1
		delay 0.5
		click menu 1 of menu bar item "Finder" of menu bar 1
		click menu item "Settings…" of menu 1 of menu bar item "Finder" of menu bar 1
		
		repeat until exists window "Finder Settings"
		end repeat
		
		click button "Sidebar" of toolbar 1 of window "Finder Settings"
		
		# [x] Recents
		if not (value of checkbox 1 of scroll area 1 of window "Finder Settings" as boolean) then
			click checkbox 1 of scroll area 1 of window "Finder Settings"
		end if
		# [ ] AirDrop
		if (value of checkbox 2 of scroll area 1 of window "Finder Settings" as boolean) then
			click checkbox 2 of scroll area 1 of window "Finder Settings"
		end if
		# [ ] Applications
		if (value of checkbox 3 of scroll area 1 of window "Finder Settings" as boolean) then
			click checkbox 3 of scroll area 1 of window "Finder Settings"
		end if
		# [x] Downloads
		if not (value of checkbox 4 of scroll area 1 of window "Finder Settings" as boolean) then
			click checkbox 4 of scroll area 1 of window "Finder Settings"
		end if
		# [ ] On My Mac
		if (value of checkbox 5 of scroll area 1 of window "Finder Settings" as boolean) then
			click checkbox 5 of scroll area 1 of window "Finder Settings"
		end if
		# [ ] Movies
		if (value of checkbox 6 of scroll area 1 of window "Finder Settings" as boolean) then
			click checkbox 6 of scroll area 1 of window "Finder Settings"
		end if
		# [ ] Music
		if (value of checkbox 7 of scroll area 1 of window "Finder Settings" as boolean) then
			click checkbox 7 of scroll area 1 of window "Finder Settings"
		end if
		# [ ] Pictures
		if (value of checkbox 8 of scroll area 1 of window "Finder Settings" as boolean) then
			click checkbox 8 of scroll area 1 of window "Finder Settings"
		end if
		# [x] akshatpradhan
		if not (value of checkbox 9 of scroll area 1 of window "Finder Settings" as boolean) then
			click checkbox 9 of scroll area 1 of window "Finder Settings"
		end if
		# [x] iCloud Drive
		if not (value of checkbox 10 of scroll area 1 of window "Finder Settings" as boolean) then
			click checkbox 10 of scroll area 1 of window "Finder Settings"
		end if
		# [x] Shared
		if not (value of checkbox 11 of scroll area 1 of window "Finder Settings" as boolean) then
			click checkbox 11 of scroll area 1 of window "Finder Settings"
		end if
		# [ ] Desktop
		if (value of checkbox 12 of scroll area 1 of window "Finder Settings" as boolean) then
			click checkbox 12 of scroll area 1 of window "Finder Settings"
		end if
		# [ ] Documents
		if (value of checkbox 13 of scroll area 1 of window "Finder Settings" as boolean) then
			click checkbox 13 of scroll area 1 of window "Finder Settings"
		end if
		# [ ] MacBookAirChiefExec
		if (value of checkbox 14 of scroll area 1 of window "Finder Settings" as boolean) then
			click checkbox 14 of scroll area 1 of window "Finder Settings"
		end if
		# [x] Hard disks
		if not (value of checkbox 15 of scroll area 1 of window "Finder Settings" as boolean) then
			click checkbox 15 of scroll area 1 of window "Finder Settings"
		end if
		# [x] External disks
		if not (value of checkbox 16 of scroll area 1 of window "Finder Settings" as boolean) then
			click checkbox 16 of scroll area 1 of window "Finder Settings"
		end if
		# [x] CDs, DVDs, and iOS Devices
		if not (value of checkbox 17 of scroll area 1 of window "Finder Settings" as boolean) then
			click checkbox 17 of scroll area 1 of window "Finder Settings"
		end if
		# [x] Cloud Storage
		if not (value of checkbox 18 of scroll area 1 of window "Finder Settings" as boolean) then
			click checkbox 18 of scroll area 1 of window "Finder Settings"
		end if
		# [x] Bonjour computers
		if not (value of checkbox 19 of scroll area 1 of window "Finder Settings" as boolean) then
			click checkbox 19 of scroll area 1 of window "Finder Settings"
		end if
		# [x] Connected servers
		if not (value of checkbox 20 of scroll area 1 of window "Finder Settings" as boolean) then
			click checkbox 20 of scroll area 1 of window "Finder Settings"
		end if
		# [ ] Recent Tags
		if (value of checkbox 21 of scroll area 1 of window "Finder Settings" as boolean) then
			click checkbox 21 of scroll area 1 of window "Finder Settings"
		end if
	end tell
	delay 0.5

  tell application "Finder" to if it is running then close its front window
end tell
'
# ! UNTESTED
mysides remove all
mysides add Recents file:///System/Library/CoreServices/Finder.app/Contents/Resources/MyLibraries/myDocuments.cannedSearch/
mysides add Downloads file:///Users/akshatpradhan/Downloads/
mysides add Screenshots file:///Users/akshatpradhan/Library/Mobile%20Documents/com~apple~CloudDocs/Screenshots/
mysides add Desktop file:///Users/akshatpradhan/Desktop/
mysides add Documents file:///Users/akshatpradhan/Documents/
mysides add courses file:///Users/akshatpradhan/Documents/courses/
mysides add Code file:///Users/akshatpradhan/Code/
mysides add cs225 file:///Users/akshatpradhan/Code/cs225/
mysides add cs233 file:///Users/akshatpradhan/Code/cs233/
mysides add akshatpradhan file:///Users/akshatpradhan/

# ========
# Advanced
# ========
# [x] Show all filename extensions (default: off)
defaults write -g "AppleShowAllExtensions" -bool "true" # * Working
# [ ] Show warning before changing an extension (default: on)
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false # * Working
# [ ] Show warning before removing from iCloud Drive (default: on)
defaults write com.apple.finder FXEnableRemoveFromICloudDriveWarning -bool false # * Working
# [ ] Show warning before emptying the trash (default: on)
defaults write com.apple.finder WarnOnEmptyTrash -bool false # * Working
# [x] Keep folders on top in windows when sorting by name (default: off) 
defaults write com.apple.finder _FXSortFoldersFirst -bool true # * Working
# [x] Keep folders on top on desktop (default: off)
defaults write com.apple.finder _FXSortFoldersFirstOnDesktop -bool true # * Working
# [Search the Current Folder] When performing a search (default: Search This Mac)
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf" # * Working

# ====
# View
# ====
# [x] Show Path Bar (default: off)
defaults write com.apple.finder "ShowPathbar" -bool "true" # * Working
# [x] Show Status Bar (default: off)
defaults write com.apple.finder "ShowStatusBar" -bool "false" # * Working

# =================
# Show View Options
# =================
# Global
# [x] Always open in list view
defaults write com.apple.finder FXPreferredViewStyle Nlsv # * Working
# Recents # TODO Manually
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
  # * Working

# =======
# Toolbar
# =======
# Back/Forward | Group | Preview | Action | Get Info | New Folder | Share | Search
# * Working
/usr/libexec/PlistBuddy -c "Delete ':NSToolbar Configuration Browser:TB Item Identifiers'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration Browser:TB Item Identifiers' array" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration Browser:TB Item Identifiers:0' string 'com.apple.finder.BACK'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration Browser:TB Item Identifiers:1' string 'com.apple.finder.ARNG'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration Browser:TB Item Identifiers:2' string 'com.apple.finder.PTGL'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration Browser:TB Item Identifiers:3' string 'com.apple.finder.ACTN'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration Browser:TB Item Identifiers:4' string 'com.apple.finder.INFO'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration Browser:TB Item Identifiers:5' string 'com.apple.finder.NFLD'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration Browser:TB Item Identifiers:6' string 'com.apple.finder.SHAR'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration Browser:TB Item Identifiers:7' string 'com.apple.finder.SRCH'" $plist
# [Icon and Text] Show (default: Icon Only)
/usr/libexec/PlistBuddy -c "Delete ':NSToolbar Configuration Browser:TB Display Mode'" $plist
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration Browser:TB Display Mode' integer 1" $plist

# Show the ~/Library folder
chflags nohidden ~/Library # * Working

# Show the /Volumes folder
sudo chflags nohidden /Volumes # * Working

# Automatically open a new Finder window when a volume is mounted
defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true # ! UNTESTED
defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true # ! UNTESTED
defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true # ! UNTESTED


# Apply Changes
defaults read com.apple.finder &>/dev/null