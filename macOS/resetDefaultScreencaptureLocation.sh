#!/bin/bash

CURRENT_USER=$(/bin/ls -la /dev/console | /usr/bin/cut -d " " -f 4)

sudo -u $CURRENT_USER defaults write com.apple.screencapture location /Users/$loggedInUser/Desktop

sudo -u $CURRENT_USER killall SystemUIServer

exit 0
