#!/bin/sh

CURRENT_USER=$(/bin/ls -la /dev/console | /usr/bin/cut -d " " -f 4)

/usr/bin/defaults write /Users/$CURRENT_USER/Library/Preferences/com.apple.finder AppleShowAllFiles YES

exit 0
