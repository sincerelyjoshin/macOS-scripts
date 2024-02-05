#!/bin/sh

if [ -a /usr/local/bin/mobilefilter ]
  then /usr/local/bin/mobilefilter -unload
  else "/usr/local/bin/mobilefilter does not exist"
fi

if [ -a /System/Library/Extensions/MobileFilterKext.kext ]
  then kextunload /System/Library/Extensions/MobileFilterKext.kext
  else "/System/Library/Extensions/MobileFilterKext.kext does not exist"
fi

exit 0
