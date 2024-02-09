#!/usr/bin/env fish
# =======
# General
# =======
# [ ] Open "safe" files after downloading (default: on)
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false # ! UNTESTED

# ========
# AutoFill
# ========
# [ ] Using info from my contacts (default: on)
defaults write com.apple.Safari AutoFillFromAddressBook -bool false # ! UNTESTED
# [ ] Credit cards (default: on)
defaults write com.apple.Safari AutoFillCreditCardData -bool false # ! UNTESTED
# [ ] Other forms (default: on)
defaults write com.apple.Safari AutoFillMiscellaneousForms -bool false # ! UNTESTED

# ======
# Search
# ======
# [ ] Include search engine suggestions (default: on)
defaults write com.apple.Safari SuppressSearchSuggestions -bool true # ! UNTESTED
# [ ] Enable Quick Website Search (default: on)
defaults write com.apple.Safari WebsiteSpecificSearchEnabled -bool false # ! UNTESTED
# [ ] Preload Top Hit in the background (default: on)
defaults write com.apple.Safari PreloadTopHit -bool false # ! UNTESTED
# [ ] Show Favorites (default: on)
defaults write com.apple.Safari ShowFavoritesUnderSmartSearchField -bool false # ! UNTESTED

# ========
# Advanced
# ========
# [ ] Show full website address (default: off)
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true # ! UNTESTED
