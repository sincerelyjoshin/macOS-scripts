#!/bin/sh

/usr/local/bin/mobilefilter -unload
kextunload /System/Library/Extensions/MobileFilterKext.kext

exit 0
