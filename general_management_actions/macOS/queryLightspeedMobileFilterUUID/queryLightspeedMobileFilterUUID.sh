#!/bin/bash

if [ -a /usr/local/bin/mobilefilter ]
  then
    LightspeedMobileFilterUUID=`grep MachineUUID /Library/lssys/mobilefilter.xml | cut -c 14-49`
  else
    LightspeedMobileFilterUUID="Not Installed"
fi

if [ -z LightspeedMobileFilterUUID ]
  then
    LightspeedMobileFilterUUID="NO UUID Available"
fi

echo $LightspeedMobileFilterUUID

exit 0
