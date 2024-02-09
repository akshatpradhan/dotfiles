#!/usr/bin/env fish

set plist $HOME/Library/Containers/com.apple.mail/Data/Library/Preferences/com.apple.mail.plist  

# =======
# General
# =======
# [Today] Dock unread count (default: Inbox)
# defaults write com.apple.mail MailDockBadge -int 4
# defaults write com.apple.mail MailDockBadgeMailbox -string "smartmailbox://MailBoxHasCode"
# [Today] New message notification (default: Inbox)
# defaults write com.apple.mail MailUserNotificationScope -int 4
# defaults write com.apple.mail MailUserNotificationMailbox -string "smartmailbox://MailBoxHasCode"
# [x] Automatically try sending later if outoing server is unavailable (default: off)
defaults write com.apple.mail SuppressDeliveryFailure -bool true # ! UNTESTED
# [ ] When searching all mailboxes, include results from: Trash (default: on)
defaults write com.apple.mail IndexTrash -bool false # ! UNTESTED

# =======
# Viewing
# =======
# [x] Mark all messages as read when opening a conversation (default: off)
defaults write com.apple.mail ConversationViewMarkAllAsRead -bool true # ! UNTESTED

# =========
# Composing
# =========
# Sending
# [30 seconds] Undo send delay (default: 10 seconds)
defaults write com.apple.mail UndoSendDelayTime -int 30 # ! UNTESTED

# ==========
# Responding
# ==========
# [x] Use the same message format as the original message (default: off)
defaults write com.apple.mail AutoReplyFormat -bool true # ! UNTESTED

# =======
# Privacy
# =======
# [x] Protect Mail Activity (default: off)
defaults write com.apple.mail LoadRemoteContent-v2 -bool true  # ! UNTESTED

# ==========================
# Toolbar for Compose Window
# ==========================
# Send | Flexible Space | Format | Attach | Link | Markup | Header Fields 
/usr/libexec/PlistBuddy -c "Delete 'NSToolbar Configuration ComposeWindow:TB Item Identifiers'" $plist  &> /dev/null # ! UNTESTED
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration ComposeWindow:TB Item Identifiers' array" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration ComposeWindow:TB Item Identifiers:0' string 'send:'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration ComposeWindow:TB Item Identifiers:1' string 'NSToolbarFlexibleSpaceItem'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration ComposeWindow:TB Item Identifiers:2' string 'toggleComposeFormatInspectorBar:'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration ComposeWindow:TB Item Identifiers:3' string 'insertFile:'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration ComposeWindow:TB Item Identifiers:4' string 'editLink:'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration ComposeWindow:TB Item Identifiers:5' string 'com.apple.ui-services:com.apple.MarkupUI.Markup'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration ComposeWindow:TB Item Identifiers:6' string 'header_fields'" $plist
# [x] Show Format Bar (default: off)
defaults read com.apple.mail ShowComposeFormatInspectorBar -bool true  # ! UNTESTED
# [Icon and Text] Show
/usr/libexec/PlistBuddy -c "Delete ':NSToolbar Configuration ComposeWindow:TB Display Mode'" $plist  # ! UNTESTED
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration ComposeWindow:TB Display Mode' integer '1'" $plist


# =======================
# Toolbar for Main Window
# =======================
# New Message | Flexible Space | Delete | Junk | Flexible Space | Reply | Reply All | Forward | Flexible Space | Move | Flag | Search
/usr/libexec/PlistBuddy -c "Delete 'NSToolbar Configuration MainWindow:TB Item Identifiers'" $plist  # ! UNTESTED
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindow:TB Item Identifiers' array" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindow:TB Item Identifiers:0' string 'toggleMessageListFilter:'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindow:TB Item Identifiers:1' string 'SeparatorToolbarItem'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindow:TB Item Identifiers:2' string 'showComposeWindow:'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindow:TB Item Identifiers:3' string 'NSToolbarSpaceItem'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindow:TB Item Identifiers:4' string 'deleteMessages:'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindow:TB Item Identifiers:5' string 'moveToJunk:'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindow:TB Item Identifiers:6' string 'NSToolbarSpaceItem:'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindow:TB Item Identifiers:7' string 'reply_replyAll_forward'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindow:TB Item Identifiers:8' string 'NSToolbarSpaceItem:'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindow:TB Item Identifiers:9' string 'moveMessagesFromToolbar:'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindow:TB Item Identifiers:10' string 'FlaggedStatus'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration MainWindow:TB Item Identifiers:11' string 'Search'" $plist
# [Icon and Text] Show
/usr/libexec/PlistBuddy -c "Delete ':NSToolbar Configuration MainWindow:TB Display Mode'" $plist  # ! UNTESTED
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration MainWindow:TB Display Mode' integer '1'" $plist

# ===================================
# Toolbar for Existing Message Window
# ===================================
# Delete | Junk | Flexible Space | Reply | Reply All | Forward | Flexible Space | Move | Flag
/usr/libexec/PlistBuddy -c "Delete 'NSToolbar Configuration SingleMessageViewer:TB Item Identifiers'" $plist  # ! UNTESTED
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration SingleMessageViewer:TB Item Identifiers' array" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration SingleMessageViewer:TB Item Identifiers:0' string 'deleteMessages:'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration SingleMessageViewer:TB Item Identifiers:1' string 'moveToJunk:'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration SingleMessageViewer:TB Item Identifiers:2' string 'NSToolbarSpaceItem'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration SingleMessageViewer:TB Item Identifiers:3' string 'reply_replyAll_forward'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration SingleMessageViewer:TB Item Identifiers:4' string 'NSToolbarSpaceItem'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration SingleMessageViewer:TB Item Identifiers:5' string 'moveMessagesFromToolbar:'" $plist
/usr/libexec/PlistBuddy -c "Add 'NSToolbar Configuration SingleMessageViewer:TB Item Identifiers:6' string 'FlaggedStatus'" $plist
# [Icon and Text] Show
/usr/libexec/PlistBuddy -c "Delete ':NSToolbar Configuration SingleMessageViewer:TB Display Mode'" $plist  # ! UNTESTED
/usr/libexec/PlistBuddy -c "Add ':NSToolbar Configuration SingleMessageViewer:TB Display Mode' integer '1'" $plist

# Apply changes
defaults read com.apple.mail &>/dev/null