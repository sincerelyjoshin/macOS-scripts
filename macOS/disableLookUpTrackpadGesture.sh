#!/bin/bash

CURRENT_USER=$(/bin/ls -la /dev/console | /usr/bin/cut -d " " -f 4)

sudo -u $CURRENT_USER defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerTapGesture -int 0

sudo -u $CURRENT_USER defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerTapGesture -int 0

exit 0
