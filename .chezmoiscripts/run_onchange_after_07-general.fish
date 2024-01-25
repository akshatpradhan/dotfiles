#!/usr/bin/env fish

# ===============
# Software Update
# ===============
# [x] Install macOS updates
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticallyInstallMacOSUpdates -bool true # * Working
# [x] Install application updates from the App Store
sudo defaults write /Library/Preferences/com.apple.commerce AutoUpdate -bool true # * Working

# TODO: Automate
# ===========
# Login Items
# ===========
# Open at Login
# [ ] BreakTimer
# [ ] Rectangle
# [ ] Shottr

# Allow in the Background
# [x] 1Password
# [x] AltTab
# [x] NextDNS
# [x] Shottr
# [ ] Zoom

# ==========================
# Language & Region
# ==========================
# [YEAR-MONTH-DAY] Date format
defaults write -g AppleICUDateFormatStrings -dict 1 "y-MM-dd" # * Working

# ================
# Sharing
# ================
# [] MacBookAirChiefExec
set computerName "MacBookAirChiefExec"
sudo systemsetup -setcomputername $computerName    # * Working
sudo systemsetup -setlocalsubnetname $computerName # * Working
sudo networksetup -setcomputername $computerName   # * Working
