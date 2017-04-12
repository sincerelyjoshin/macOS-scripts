#!/usr/bin/python

import os
import sys

os.system("/usr/local/bin/mobilefilter -unload")
os.system("kextunload /System/Library/Extensions/MobileFilterKext.kext")

sys.exit(0)
