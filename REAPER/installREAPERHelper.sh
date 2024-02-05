#!/bin/bash

mkdir -p /Library/Application\ Support/Propellerhead\ Software/ReWire/
cp -R /Applications/REAPER.app/Contents/Plugins/ReWire.bundle /Library/Application\ Support/Propellerhead\ Software/ReWire
ln -s /Applications/REAPER.app/Contents/Plugins/REAPERReWireDev.bundle /Library/Application\ Support/Propellerhead\ Software/ReWire/REAPERReWireDev64.plugin

exit 0