#!/bin/sh

/usr/bin/defaults write /Library/Preferences/.GlobalPreferences.plist NSAutomaticSpellingCorrectionEnabled -bool false
/usr/bin/defaults read /Library/Preferences/.GlobalPreferences.plist NSAutomaticSpellingCorrectionEnabled

exit 0
