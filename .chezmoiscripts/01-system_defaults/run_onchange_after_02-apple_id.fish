#!/usr/bin/env fish

# [ ] Click -> Edit -> Pick Goth Photo

# ======
# iCloud
# ====== 
# [ ] Optimize Mac Storage (default: on)

## iCloud Drive
# [x] Desktop & Documents Folders (default: off)
/usr/libexec/PlistBuddy -c "Delete ':FXICloudDriveDesktop'" -c "Add ':FXICloudDriveDesktop' bool 'true'" "$HOME/Library/Preferences/com.apple.finder.plist"
/usr/libexec/PlistBuddy -c "Delete ':FXICloudDriveDocuments'" -c "Add ':FXICloudDriveDocuments' bool 'true'" "$HOME/Library/Preferences/com.apple.finder.plist"
/usr/libexec/PlistBuddy -c "Delete ':SidebarShowingiCloudDesktop'" -c "Add ':SidebarShowingiCloudDesktop' bool 'true'" "$HOME/Library/Preferences/com.apple.finder.plist"

### Apps syncing to iCloud Drive
# TODO Manually: 
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
# TODO Manually:
# [x] Messages in iCloud
# [x] Notes
# [x] Find My Mac
# [x] Contacts
# [x] iCloud Calendar
# [x] Reminders
# [x] Stocks
# [x] Home
# [x] Wallet
# [x] Siri
# [x] Freeform
# [x] Mail
# [x] Maps
# [x] Music Recognition
# [x] Shortcuts
# [x] Arc

## iCloud+
# [x] Private Relay
# [Use country and time zone] IP Address Location (default: Maintain general location)
# [Turn On] Advanced Data Protection (default: off)
# [Set Up] Account Recovery (default: off)

# =================
# Media & Purchases
# =================
# [x] Use Touch ID for Purchases

