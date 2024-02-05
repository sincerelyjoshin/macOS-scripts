#!/bin/bash

CURRENT_USER=$(/bin/ls -la /dev/console | /usr/bin/cut -d " " -f 4)

/usr/bin/sudo -u $CURRENT_USER /usr/bin/defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerTapGesture -int 0

/usr/bin/sudo -u $CURRENT_USER /usr/bin/defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerTapGesture -int 0

exit 0
