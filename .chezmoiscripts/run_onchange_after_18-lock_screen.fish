#!/usr/bin/env fish

# [30 mins] Turn display off on battery when inactive (default: 2 mins)
sudo pmset -b displaysleep 30 # * Working

# [30 mins] Turn display off on power adapter when inactive (default: 10 mins)
sudo pmset -c displaysleep 30 # * Working

# [Immediately] Require password after screen saver begins or display is turned off (default: 5 mins)
sysadminctl -screenLock immediate -password - # * Working

# Pass '-' instead of password in commands above to request prompt.
# '-adminPassword' used mostly for scripted operation. Use '-' or 'interactive' to get the authentication string interactively. This preferred for security reasons
