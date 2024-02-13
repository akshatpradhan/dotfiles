#!/usr/bin/env fish
# =======
# General
# =======
# [ ] Open "safe" files after downloading (default: on)
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false # * Working

# ========
# AutoFill
# ========
# [ ] Using info from my contacts (default: on)
defaults write com.apple.Safari AutoFillFromAddressBook -bool false # * Working
# [ ] Credit cards (default: on)
defaults write com.apple.Safari AutoFillCreditCardData -bool false # * Working
# [ ] Other forms (default: on)
defaults write com.apple.Safari AutoFillMiscellaneousForms -bool false # * Working

# ======
# Search
# ======
# [ ] Include search engine suggestions (default: on)
defaults write com.apple.Safari SuppressSearchSuggestions -bool true # * Working
# [ ] Enable Quick Website Search (default: on)
defaults write com.apple.Safari WebsiteSpecificSearchEnabled -bool false # * Working
# [ ] Preload Top Hit in the background (default: on)
defaults write com.apple.Safari PreloadTopHit -bool false # * Working
# [ ] Show Favorites (default: on)
defaults write com.apple.Safari ShowFavoritesUnderSmartSearchField -bool false # * Working

# ========
# Advanced
# ========
# [x] Show full website address (default: off)
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true # * Working

# Apply Changes
defaults read com.apple.Safari &>/dev/null