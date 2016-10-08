#!/bin/bash

/usr/local/bin/mobilefilter -unload
/bin/rm /usr/local/bin/mobilefilter

/bin/rm/ /Library/LaunchDaemons/com.lightspeedsystems.mobilefilter.plist

kextunload /System/Library/Extensions/MobileFilterKext.kext
rm -R /System/Library/Extensions/MobileFilterKext.kext

exit 0
