#!/usr/bin/env fish

# =======
# General
# =======
# [First Name] Sort By (default: Last Name)
defaults read com.apple.AddressBook ABNameSortingFormat -string "sortingFirstName sortingLastName" # ! UNTESTED
# TODO: [iCloud] Default Account
