#!/bin/sh

loggedInUser=`python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u"", u"ladmin"]]; sys.stdout.write(username + "\n");'`

/usr/libexec/PlistBuddy -c "Set BlockingStoragePolicy 1" /Users/$loggedInUser/Library/Preferences/com.apple.Safari.plist

exit 0
