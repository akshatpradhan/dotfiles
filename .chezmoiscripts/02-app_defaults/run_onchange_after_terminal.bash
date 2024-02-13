#!/usr/bin/env bash

# =======
# General
# =======

# Import Penumbra theme and set as default
THEME_FILE=$HOME/.local/share/chezmoi/private_dot_config/penumbra_dark.terminal

if [[ -f $THEME_FILE ]]; then
  osascript <<EOD
    tell application "Terminal"
      set themeName to "penumbra_dark"

      -- Check if the theme is already imported
      if not (exists (settings set themeName)) then

        -- Open the custom theme to add it to available themes
        do shell script "open '$THEME_FILE'"

        -- Wait a bit to ensure the theme is added
        delay 1

      end if

      -- Set the custom theme as the default
      set default settings to settings set themeName

    end tell
EOD
fi
defaults write com.apple.terminal "Default Window Settings" -string "penumbra_dark" # * Working

# [penumbra_dark] On startup, open: new window with profile: (default: Basic)
defaults write com.apple.terminal "Startup Window Settings" -string "penumbra_dark" # * Working
# New tabs open with: [Default Profile] and [Default Working Directory]
defaults write com.apple.terminal NewTabSettingsBehavior -int 1
defaults write com.apple.terminal NewTabWorkingDirectoryBehavior -int 1 # * Working

# [ ] Automatically Mark Prompt Lines (default: on)
defaults write com.apple.Terminal AutoMarkPromptLines -bool false # * Working

# Apply Changes
defaults read com.apple.Terminal &>/dev/null
