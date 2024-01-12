#!/usr/bin/env bash

# Options
# [x] Enable Firewall (default: off)
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on &>/dev/null
# sudo defaults write /Library/Preferences/com.apple.alf globalstate 1 # Not Working

# [x] Enable stealth mode (default: off)
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setstealthmode on &>/dev/null
# sudo defaults write /Library/Preferences/com.apple.alf stealthenabled 1 # Not sure if working

# TODO: VPN for NextDNS
