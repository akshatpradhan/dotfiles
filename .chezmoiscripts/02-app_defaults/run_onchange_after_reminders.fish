#!/usr/bin/env fish

# ====
# View
# ====
# [Due Date] Sort by: (default: Manual)
defaults write com.apple.remindd ThrottlingPolicyCurrentBatchCount -int 3 # ! NOT WORKING

# Apply Changes
defaults read com.apple.remindd &>/dev/null