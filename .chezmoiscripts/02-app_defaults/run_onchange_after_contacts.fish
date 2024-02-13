#!/usr/bin/env fish

# =======
# General
# =======
# [First Name] Sort By (default: Last Name)
defaults write com.apple.AddressBook ABNameSortingFormat -string "sortingFirstName sortingLastName" # * Working
# TODO: [iCloud] Default Account


# Apply changes
defaults read com.apple.AddressBook &>/dev/null