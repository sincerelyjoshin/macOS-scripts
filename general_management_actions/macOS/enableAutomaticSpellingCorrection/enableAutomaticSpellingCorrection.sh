#!/bin/sh

defaults write /Library/Preferences/.GlobalPreferences.plist NSAutomaticSpellingCorrectionEnabled -bool true
defaults read /Library/Preferences/.GlobalPreferences.plist NSAutomaticSpellingCorrectionEnabled

exit 0
