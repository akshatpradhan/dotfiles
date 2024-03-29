#!/usr/bin/env fish

# [30 mins] Turn display off on battery when inactive (default: 2 mins)
sudo pmset -b displaysleep 30 # * Working
# [30 mins] Turn display off on power adapter when inactive (default: 10 mins)
sudo pmset -c displaysleep 30 # * Working
# [Immediately] Require password after screen saver begins or display is turned off (default: 5 mins)
# Note: "Use '-' in place of a password to prompt to request prompt.
# For scripted operations, use '-adminPassword'.
# It can accept '-' or 'interactive' for secure, interactive authentication.
sysadminctl -screenLock immediate -password - # * Working
