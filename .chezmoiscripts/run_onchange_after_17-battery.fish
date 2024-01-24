#!/usr/bin/env fish

# [ ] Slightly dim the display on battery (default: on)
sudo pmset -a lessbright 0 # * Working

# [x] Prevent automatic sleeping on power adapter when the display is off (default: off)
sudo pmset -c sleep 0 # * Working

# [Never] Wake for network access
sudo pmset -a womp 0 # * Working
