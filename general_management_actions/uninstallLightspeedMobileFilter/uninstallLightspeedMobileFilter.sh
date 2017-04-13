#!/bin/bash

if [ -a /usr/local/bin/mobilefilter ]
  then /usr/local/bin/mobilefilter -unload; /bin/rm /usr/local/bin/mobilefilter
  else "/usr/local/bin/mobilefilter does not exist"
fi

if [ -a /Library/LaunchDaemons/com.lightspeedsystems.mobilefilter.plist ]
  then /bin/rm /Library/LaunchDaemons/com.lightspeedsystems.mobilefilter.plist
  else "/Library/LaunchDaemons/com.lightspeedsystems.mobilefilter.plist does not exist"
fi

if [ -a /System/Library/Extensions/MobileFilterKext.kext ]
  then kextunload /System/Library/Extensions/MobileFilterKext.kext; /bin/rm -R /System/Library/Extensions/MobileFilterKext.kext
  else "/System/Library/Extensions/MobileFilterKext.kext does not exist"
fi

exit 0
