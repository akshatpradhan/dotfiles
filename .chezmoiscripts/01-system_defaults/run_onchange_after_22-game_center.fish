#!/usr/bin/env fish

# ===========
# Game Center
# ===========
# [x] Signout

/usr/libexec/PlistBuddy -c "Delete ':com.apple.account.GameCenter.count'" -c "Add ':com.apple.account.GameCenter.count' integer '0'" /Library/Preferences/SystemConfiguration/com.apple.accounts.exists.plist
/usr/libexec/PlistBuddy -c "Delete ':com.apple.account.GameCenter.exists'" -c "Add ':com.apple.account.GameCenter.exists' integer '2'" /Library/Preferences/SystemConfiguration/com.apple.accounts.exists.plist