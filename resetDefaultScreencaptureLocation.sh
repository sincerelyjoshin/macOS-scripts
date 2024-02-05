#!/bin/bash

CURRENT_USER=$(/bin/ls -la /dev/console | /usr/bin/cut -d " " -f 4)

/usr/bin/sudo -u $CURRENT_USER /usr/bin/defaults write com.apple.screencapture location /Users/$loggedInUser/Desktop

/usr/bin/sudo -u $CURRENT_USER /usr/bin/killall SystemUIServer

exit 0
