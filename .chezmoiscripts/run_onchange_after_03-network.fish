#!/usr/bin/env fish

# Options
# [x] Enable Firewall (default: off)
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on &>/dev/null # * Working

# [x] Enable stealth mode (default: off)
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setstealthmode on &>/dev/null # * Working

# TODO: VPN for NextDNS
