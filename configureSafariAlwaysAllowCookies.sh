#!/bin/sh

CURRENT_USER=$(/bin/ls -la /dev/console | /usr/bin/cut -d " " -f 4)

/usr/libexec/PlistBuddy -c "Set BlockingStoragePolicy 1" /Users/$CURRENT_USER/Library/Preferences/com.apple.Safari.plist

exit 0
