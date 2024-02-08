#!/usr/bin/env fish

set plist /var/root/Library/Preferences/com.apple.CoreBrightness.plist
set generatedUID (dscl . -read ~ GeneratedUID | string replace 'GeneratedUID: ' '')

# ! Test at night. Initial script run doesn't apply settings; chezmoi -v update required for changes to take effect.
# ===========
# Night Shift
# ===========
# [Sunset to Sunrise] Schedule (default: off)
# [x] Turn on until sunrise (defualt: off))
# [More Warm] Color Temperature (default: medium warm)
sudo /usr/libexec/PlistBuddy -c "Delete :CBUser-$generatedUID:CBBlueLightReductionCCTTargetRaw" $plist
sudo /usr/libexec/PlistBuddy -c "Add :CBUser-$generatedUID:CBBlueLightReductionCCTTargetRaw real 2700.000000" $plist
sudo /usr/libexec/PlistBuddy -c "Delete :CBUser-$generatedUID:CBBlueReductionStatus:AutoBlueReductionEnabled" $plist
sudo /usr/libexec/PlistBuddy -c "Add :CBUser-$generatedUID:CBBlueReductionStatus:AutoBlueReductionEnabled integer 1" $plist
sudo /usr/libexec/PlistBuddy -c "Delete :CBUser-$generatedUID:CBBlueReductionStatus:BlueLightReductionAlgoOverride" $plist
sudo /usr/libexec/PlistBuddy -c "Add :CBUser-$generatedUID:CBBlueReductionStatus:BlueLightReductionAlgoOverride integer 0" $plist
sudo /usr/libexec/PlistBuddy -c "Delete :CBUser-$generatedUID:CBBlueReductionStatus:BlueLightReductionDisableScheduleAlertCounter" $plist
sudo /usr/libexec/PlistBuddy -c "Add :CBUser-$generatedUID:CBBlueReductionStatus:BlueLightReductionDisableScheduleAlertCounter integer 3" $plist
sudo /usr/libexec/PlistBuddy -c "Delete :CBUser-$generatedUID:CBBlueReductionStatus:BlueLightReductionSchedule" $plist
sudo /usr/libexec/PlistBuddy -c "Add :CBUser-$generatedUID:CBBlueReductionStatus:BlueLightReductionSchedule:DayStartHour integer 12" $plist
sudo /usr/libexec/PlistBuddy -c "Add :CBUser-$generatedUID:CBBlueReductionStatus:BlueLightReductionSchedule:DayStartMinute integer 0" $plist
sudo /usr/libexec/PlistBuddy -c "Add :CBUser-$generatedUID:CBBlueReductionStatus:BlueLightReductionSchedule:NightStartHour integer 20" $plist
sudo /usr/libexec/PlistBuddy -c "Add :CBUser-$generatedUID:CBBlueReductionStatus:BlueLightReductionSchedule:NightStartMinute integer 0" $plist
sudo /usr/libexec/PlistBuddy -c "Delete :CBUser-$generatedUID:CBBlueReductionStatus:BlueReductionAvailable" $plist
sudo /usr/libexec/PlistBuddy -c "Add :CBUser-$generatedUID:CBBlueReductionStatus:BlueReductionAvailable integer 1" $plist
sudo /usr/libexec/PlistBuddy -c "Delete :CBUser-$generatedUID:CBBlueReductionStatus:BlueReductionEnabled" $plist
sudo /usr/libexec/PlistBuddy -c "Add :CBUser-$generatedUID:CBBlueReductionStatus:BlueReductionEnabled integer 1" $plist
sudo /usr/libexec/PlistBuddy -c "Delete :CBUser-$generatedUID:CBBlueReductionStatus:BlueReductionMode" $plist
sudo /usr/libexec/PlistBuddy -c "Add :CBUser-$generatedUID:CBBlueReductionStatus:BlueReductionMode integer 1" $plist
sudo /usr/libexec/PlistBuddy -c "Delete :CBUser-$generatedUID:CBBlueReductionStatus:BlueReductionSunScheduleAllowed" $plist
sudo /usr/libexec/PlistBuddy -c "Add :CBUser-$generatedUID:CBBlueReductionStatus:BlueReductionSunScheduleAllowed integer 1" $plist
sudo /usr/libexec/PlistBuddy -c "Delete :CBUser-$generatedUID:CBColorAdaptationEnabled" $plist
sudo /usr/libexec/PlistBuddy -c "Add :CBUser-$generatedUID:CBColorAdaptationEnabled integer 1" $plist
# Apply Changes
sudo defaults read com.apple.CoreBrightness &>/dev/null
# Uncomment for bash usage
# generatedUID=$(dscl . -read ~ GeneratedUID | sed 's/GeneratedUID: //')
# sudo defaults read /var/root/Library/Preferences/com.apple.CoreBrightness.plist CBUser-$generatedUID


# 14-displays.fish (line 9): Expected a string, but found a redirection
# set plist "/var/root/Library/Preferences/com.apple.CoreBrightness.plist"
# sudo defaults read com.apple.CoreBrightness