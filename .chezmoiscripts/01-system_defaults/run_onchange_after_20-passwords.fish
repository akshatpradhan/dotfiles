#!/usr/bin/env fish

# ========================
# Security Recommendations
# ========================
# [ ] Detect Leaked Passwords (default: on)
defaults write com.apple.Safari PasswordBreachDetectionOn -bool false # ! UNTESTED

# ================
# Password Options
# ================
# [ ] AutoFill Passwords and Passkeys (default: on)
defaults write com.apple.Safari AutoFillPasswords -bool false # ! UNTESTED

# [ ] Clean up Verification Codes automatically (default: on) # ! NOT SURE I WANT TO DISABLE THIS
# defaults write com.apple.onetimepasscodes DeleteVerificationCodes -bool false
# defaults write com.apple.MobileSMS DeleteVerificationCodes -bool false

