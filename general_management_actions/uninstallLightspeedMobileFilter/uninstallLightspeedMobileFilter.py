#!/usr/bin/python

import os
import shutil
import sys

if os.path.exists("/usr/local/bin/mobilefilter"):
    os.system("/usr/local/bin/mobilefilter -unload")
    os.remove("/usr/local/bin/mobilefilter")
else:
    print("/usr/local/bin/mobilefilter does not exist")

if os.path.exists("/Library/LaunchDaemons/com.lightspeedsystems.mobilefilter.plist"):
    os.remove("/Library/LaunchDaemons/com.lightspeedsystems.mobilefilter.plist")
else:
    print("/Library/LaunchDaemons/com.lightspeedsystems.mobilefilter.plist does not exist")

if os.path.exists("/System/Library/Extensions/MobileFilterKext.kext"):
    os.system("kextunload /System/Library/Extensions/MobileFilterKext.kext")
    shutil.rmtree("/System/Library/Extensions/MobileFilterKext.kext")
else:
    print("/System/Library/Extensions/MobileFilterKext.kext does not exist")

sys.exit(0)
