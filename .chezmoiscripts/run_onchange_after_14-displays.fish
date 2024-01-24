#!/usr/bin/env fish

# Night Shift
# - [Sunset to Sunrise] Schedule (default: off)
# - [x] Turn on until sunrise (defualt: off))
# - [More Warm] Color Temperature (default: medium warm)

# ! TO TEST

generatedUID=$(dscl . -read ~ GeneratedUID | sed 's/GeneratedUID: //')
sudo /usr/libexec/PlistBuddy -c "Set :CBUser-$generatedUID:CBBlueLightReductionCCTTargetRaw 2700" "/var/root/Library/Preferences/com.apple.CoreBrightness.plist"
sudo /usr/libexec/PlistBuddy -c "Set :CBUser-$generatedUID:CBBlueReductionStatus:BlueLightReductionDisableScheduleAlertCounter 3" "/var/root/Library/Preferences/com.apple.CoreBrightness.plist"
sudo /usr/libexec/PlistBuddy -c "Set :CBUser-$generatedUID:CBBlueReductionStatus:BlueReductionEnabled 0" "/var/root/Library/Preferences/com.apple.CoreBrightness.plist"
sudo /usr/libexec/PlistBuddy -c "Set :CBUser-$generatedUID:CBBlueReductionStatus:BlueReductionMode 0" "/var/root/Library/Preferences/com.apple.CoreBrightness.plist"
# sudo defaults read /var/root/Library/Preferences/com.apple.CoreBrightness.plist CBUser-$generatedUID



# CBBlueLightReductionCCTTargetRaw = 2700;
# BlueLightReductionDisableScheduleAlertCounter = 3;
# BlueReductionEnabled = 1;
# BlueReductionMode = 1;
# set CORE_BRIGHTNESS="/var/root/Library/Preferences/com.apple.CoreBrightness.plist"

# set ENABLE='{
#   CBBlueReductionStatus =     {
#     AutoBlueReductionEnabled = 1;
#     BlueLightReductionDisableScheduleAlertCounter = 3;
#     BlueLightReductionSchedule =         {
#       DayStartHour = 7;
#       DayStartMinute = 0;
#       NightStartHour = 22;
#       NightStartMinute = 0;
#     };
#     BlueReductionEnabled = 0;
#     BlueReductionMode = 1;
#     BlueReductionSunScheduleAllowed = 1;
#     Version = 1;
#   };
# }'

# sudo defaults write $CORE_BRIGHTNESS "CBUser-0" "$ENABLE"
# sudo defaults write $CORE_BRIGHTNESS "CBUser-$(dscl . -read ~ GeneratedUID | sed 's/GeneratedUID: //')" "$ENABLE"
