#!/usr/bin/python

import os
import sys

if os.path.exists("/usr/local/bin/mobilefilter"):
    os.system("/usr/local/bin/mobilefilter -unload")
else:
    print("/usr/local/bin/mobilefilter does not exist")

if os.path.exists("/System/Library/Extensions/MobileFilterKext.kext"):
    os.system("kextunload /System/Library/Extensions/MobileFilterKext.kext")
else:
    print("/System/Library/Extensions/MobileFilterKext.kext does not exist")

sys.exit(0)
