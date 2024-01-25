#!/usr/bin/env fish

# ===========
# Night Shift
# ===========
# [Sunset to Sunrise] Schedule (default: off)
# [x] Turn on until sunrise (defualt: off))
# [More Warm] Color Temperature (default: medium warm)
# ! Test at night. Initial script run doesn't apply settings; manual execution required for changes to take effect.
set plist "/var/root/Library/Preferences/com.apple.CoreBrightness.plist"
set generatedUID (dscl . -read ~ GeneratedUID | string replace 'GeneratedUID: ' '')
sudo /usr/libexec/PlistBuddy -c "Add :CBUser-$generatedUID:CBBlueLightReductionCCTTargetRaw integer 2700" $plist
sudo /usr/libexec/PlistBuddy -c "Add :CBUser-$generatedUID:CBBlueReductionStatus:BlueLightReductionDisableScheduleAlertCounter integer 3" $plist
sudo /usr/libexec/PlistBuddy -c "Set :CBUser-$generatedUID:CBBlueReductionStatus:BlueReductionEnabled 1" $plist
sudo /usr/libexec/PlistBuddy -c "Set :CBUser-$generatedUID:CBBlueReductionStatus:BlueReductionMode 1" $plist

# Uncomment for bash usage
# generatedUID=$(dscl . -read ~ GeneratedUID | sed 's/GeneratedUID: //')
# sudo defaults read /var/root/Library/Preferences/com.apple.CoreBrightness.plist CBUser-$generatedUID
