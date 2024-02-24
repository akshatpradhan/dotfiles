#!/usr/bin/env fish

# [ ] Click -> Edit -> Pick Goth Photo # TODO: Manual

# ======
# iCloud
# ====== 
# [ ] Optimize Mac Storage (default: on) # ! UNTESTED
defaults write com.apple.bird optimize-storage -bool false 
 
## iCloud Drive
# [x] Desktop & Documents Folders (default: off) # ! UNTESTED
defaults write com.apple.finder FXICloudDriveDesktop -bool true
defaults write com.apple.finder FXICloudDriveDocuments -bool true
defaults write com.apple.finder SidebarShowingiCloudDesktop -bool true
defaults write com.apple.finder SidebarShowingSignedIntoiCloud -bool true


### Apps syncing to iCloud Drive # TODO: Manual
# [x] Automator
# [x] Books
# [x] Music
# [x] Mail
# [x] Obsidian
# [x] Photos
# [x] Preview
# [x] Script Editor
# [x] Shortcuts
# [x] TextEdit
# [x] Universal Control
# [x] Weather
# Everything else turned off

## Show More Apps...
# ! UNTESTED
# [x] Messages in iCloud (default: on)
# [x] Notes (default: on)
# [x] Find My Mac (default: on)
# [x] Contacts (default: on)
# [x] iCloud Calendar (default: on)
# [x] Reminders (default: on)
# [ ] Safari (default: on)
/usr/libexec/PlistBuddy -c "Delete ':Accounts:0:Services:10:Enabled'" -c "Add ':Accounts:0:Services:10:Enabled' bool 'false'" "$HOME/Library/Preferences/MobileMeAccounts.plist"
# [ ] News (default: on)
/usr/libexec/PlistBuddy -c "Delete ':Accounts:0:Services:16:Enabled'" -c "Add ':Accounts:0:Services:16:Enabled' bool 'false'" "$HOME/Library/Preferences/MobileMeAccounts.plist"
# [x] Stocks (default: on)
# [x] Home (default: on)
# [x] Wallet (default: on)
# [x] Siri (default: on)
# [x] Freeform (default: on)
# [x] Mail (default: on)
# [x] Maps (default: on)
# [x] Music Recognition (default: on)
# [x] Shortcuts (default: on)
# [x] Arc (default: on)



## iCloud+ # TODO: Manual
# [x] Private Relay
# [Use country and time zone] IP Address Location (default: Maintain general location)
# ! Private Relay binary plist storage and nested keys are complex
# ! See: https://raw.githubusercontent.com/brunerd/macAdminTools/main/Scripts/iCloudPrivateRelayStatus.sh


# [Turn On] Advanced Data Protection (default: off) # TODO: Manual
# [Set Up] Account Recovery (default: off) # TODO: Manual

# =================
# Media & Purchases
# =================
# [x] Use Touch ID for Purchases # TODO: Manual. Can't be scripted because it requires authentication

