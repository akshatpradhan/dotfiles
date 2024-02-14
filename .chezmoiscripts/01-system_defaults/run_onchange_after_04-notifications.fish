#!/usr/bin/env fish

set plist $HOME/Library/Preferences/com.apple.ncprefs.plist

# This can't be configured until all the apps are installed. 
# That's because the numbers for the apps are not consistent across different machines.
# ========
# FaceTime
# ========
# [ ] Allow notifications (default: on)
# /usr/libexec/PlistBuddy -c "Delete ':apps:0:flags'" -c "Add ':apps:0:flags' integer '8396814'" $plist

# =======
# Find My
# =======
# /usr/libexec/PlistBuddy -c "Delete ':apps:29:flags'" -c "Add ':apps:29:flags' integer '815792142'" $plist

# ===========
# Game Center
# ===========
# /usr/libexec/PlistBuddy -c "Delete ':apps:15:flags'" -c "Add ':apps:15:flags' integer '5109194766'" "$HOME/Library/Preferences/com.apple.ncprefs.plist"

# ====
# Tips
# ====
# [ ] Allow notifications (default: on)
# /usr/libexec/PlistBuddy -c "Delete ':apps:46:flags'" -c "Add ':apps:46:flags' integer '294125654'" $plist

#  [ ] Allow notifications when mirroring or sharing the display (default: off) (Not sure if we need to enable this when using dual monitors)


# Application Notifications

# Break Timer
# [ ] Allow notifications (default: on)

# Cyberduck
# [ ] Allow notifications (default: on)

# Game Center
# [ ] Allow notifications (default: on)


# Google Chrome
# [ ] Allow notifications (default: on)

# Mail
# [x] Allow notifications (default: on)
# [Banners]
# [x] Show notifications on lock screen (default: on)
# [x] Show in Notification Center (default: on)
# [x] Badge application icon (default: on)
# [x] Play sound for notification (default: on)

# Microsoft Word
# [ ] Allow notifications (default: on)

# Mimestream
# [x] Allow notifications (default: on)
# [Banners]
# [x] Show notifications on lock screen (default: on)
# [x] Show in Notification Center (default: on)
# [x] Badge application icon (default: on)
# [x] Play sound for notification (default: on)

# Motion
# [x] Allow notifications (default: on)
# [Banners]
# [x] Show notifications on lock screen (default: on)
# [x] Show in Notification Center (default: on)
# [x] Badge application icon (default: on)
# [x] Play sound for notification (default: on)

# Mullvad Browser
# [ ] Allow notifications (default: on)

# Photos
# [ ] Allow notifications (default: on)

# QSpace
# [ ] Allow notifications (default: on)

# Scrivener
# [ ] Allow notifications (default: on)


# Wallet
# [ ] Allow notifications (default: on)

# Weather
# [x] Allow notifications (default: on)

# Zoom
# [ ] Allow notifications (default: on)