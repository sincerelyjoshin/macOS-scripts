#!/bin/bash

targetApp="/Applications/OHSecureBrowser.app"

if [ -d "${targetApp}" ]
  then rm -R "${targetApp}"
  else echo "${targetApp} does not exist"
fi

exit 0
