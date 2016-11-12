#!/bin/sh

if [ -d /Applications/SMART\ Technologies/Notebook.app ]
  then
    ActivationStatus=$(/Applications/SMART\ Technologies/SMART\ Tools/SMART\ Product\ Update.app/Contents/MacOS/SMART\ Product\ Update --query [OPTIONS] --format xml --key "products.Notebook.licenseStatus" > /tmp/org.organization.smartstatus.plist 2> /dev/null; awk '{ print $1 }' /tmp/org.organization.smartstatus.plist)
  else
    ActivationStatus="Not Installed"
fi

echo $ActivationStatus

exit 0
