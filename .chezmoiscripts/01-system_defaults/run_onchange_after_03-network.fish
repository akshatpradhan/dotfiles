#!/usr/bin/env fish

# ========
# Firewall
# ========
# [x] Enable Firewall (default: off)
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on &>/dev/null # * Working
# [x] Enable stealth mode (default: off)
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setstealthmode on &>/dev/null # * Working

# ===
# VPN
# ===
# TODO: VPN for NextDNS


