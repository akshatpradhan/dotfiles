#!/usr/bin/env fish

# =======
# General
# =======
# [Week, Stop on Today] Scroll in week view by Day (default: Week)
defaults write com.apple.iCal "scroll by weeks in week view" -int 2 # * Working
# Show [16] hours at a time (default: 12)
defaults write com.apple.iCal "first shown minute of day" -float 409.193817 # * Working
defaults write com.apple.iCal "number of hours displayed" -int 16 # * Working

# [30 minutes] Default event duration: (default: 1 hour)
defaults write com.apple.iCal "Default duration in minutes for new event" -float 30 # * Working
# [Home] Default Calendar (default: Selected calendar)
# TODO /usr/libexec/PlistBuddy -c "Delete ':CalDefaultCalendar'" -c "Add ':CalDefaultCalendar' string 'Calendar Hash'" "$HOME/Library/Preferences/com.apple.iCal.plist"
# [ ] Show Holidays Calendar (default: on)
# /usr/libexec/PlistBuddy -c "Delete ':RefreshingWaiters:1AD16AF9-BB04-4B99-9C2A-BB43AB88AD5F:CalDAVRefresh'" -c "Add ':RefreshingWaiters:1AD16AF9-BB04-4B99-9C2A-BB43AB88AD5F:CalDAVRefresh' integer '1'" "$HOME/Library/Preferences/com.apple.dataaccess.babysitter.plist"
# /usr/libexec/PlistBuddy -c "Delete ':RefreshingWaiters:623CAB5D-3B95-4634-804D-DF9518081001:CalDAVRefresh'" -c "Add ':RefreshingWaiters:623CAB5D-3B95-4634-804D-DF9518081001:CalDAVRefresh' integer '2'" "$HOME/Library/Preferences/com.apple.dataaccess.babysitter.plist"
# /usr/libexec/PlistBuddy -c "Delete ':RefreshingWaiters:1AD16AF9-BB04-4B99-9C2A-BB43AB88AD5F:CalDAVRefresh'" "$HOME/Library/Preferences/com.apple.dataaccess.babysitter.plist"
# /usr/libexec/PlistBuddy -c "Delete ':RefreshingWaiters:623CAB5D-3B95-4634-804D-DF9518081001:CalDAVRefresh'" "$HOME/Library/Preferences/com.apple.dataaccess.babysitter.plist"

# ========
# Accounts
# ========
# iCloud
# [x] Enable this account
# [push] Refresh Calendars

# (Student)
# [x] Enable this account
# [push] Refresh Calendars

# (Business)
# [x] Enable this account
# [Every 15 minutes] Refresh Calendars

# ======
# Alerts
# ======
# [ ] Show invitation messages in Notification Center (default: on)
defaults write com.apple.iCal "InvitationNotificationsDisabled" -bool true # * Working

# ========
# Advanced
# ========
# [x] Turn on time zone support (default: off)
defaults write com.apple.iCal "TimeZone support enabled" -bool true # * Working
# [ ] Show invitee declines (default: on)
defaults write com.apple.iCal "InviteeDeclineAlerts" -bool false # * Working
# [ ] Ask before sending changes to events (default: on)
defaults write com.apple.iCal "WarnBeforeSendingInvitations" -bool false # * Working
