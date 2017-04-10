#!/bin/bash

#ladmin exclusion specific to my environment
loggedInUser=`python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u"", u"ladmin"]]; sys.stdout.write(username + "\n");'`

if [ -z loggedInUser ]
  then
    echo "logged in user does not meet criteria"; exit 1
fi

sudo -u $loggedInUser defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerTapGesture -int 0

sudo -u $loggedInUser defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerTapGesture -int 0

exit 0
