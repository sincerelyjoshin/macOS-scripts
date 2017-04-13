#!/usr/bin/python

import os
import shutil
import sys

targetApp="/Applications/OHSecureBrowser.app"

if os.path.exists(targetApp):
    shutil.rmtree(targetApp)
else:
    print ("%s does not exist" % targetApp)

sys.exit(0)
