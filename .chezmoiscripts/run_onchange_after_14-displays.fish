#!/usr/bin/env fish

# Night Shift
# - [Sunset to Sunrise] Schedule (default: off)
# - [x] Turn on until sunrise (defualt: off))
# - [More Warm] Color Temperature (default: medium warm)
# ! TO TEST
set generatedUID (dscl . -read ~ GeneratedUID | string replace 'GeneratedUID: ' '')
sudo /usr/libexec/PlistBuddy -c "Add :CBUser-$generatedUID:CBBlueLightReductionCCTTargetRaw integer 2700" "/var/root/Library/Preferences/com.apple.CoreBrightness.plist"
sudo /usr/libexec/PlistBuddy -c "Add :CBUser-$generatedUID:CBBlueReductionStatus:BlueLightReductionDisableScheduleAlertCounter integer 3" "/var/root/Library/Preferences/com.apple.CoreBrightness.plist"
sudo /usr/libexec/PlistBuddy -c "Set :CBUser-$generatedUID:CBBlueReductionStatus:BlueReductionEnabled 1" "/var/root/Library/Preferences/com.apple.CoreBrightness.plist"
sudo /usr/libexec/PlistBuddy -c "Set :CBUser-$generatedUID:CBBlueReductionStatus:BlueReductionMode 1" "/var/root/Library/Preferences/com.apple.CoreBrightness.plist"
# generatedUID=$(dscl . -read ~ GeneratedUID | sed 's/GeneratedUID: //')
# sudo defaults read /var/root/Library/Preferences/com.apple.CoreBrightness.plist CBUser-$generatedUID