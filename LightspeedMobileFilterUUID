#!/bin/bash

if [ -a /usr/local/bin/mobilefilter ]
then
LightspeedMobileFilterUUID=`grep MachineUUID /Library/lssys/mobilefilter.xml | cut -c 14-49`
else
LightspeedMobileFilterUUID="Not Installed"
fi

if [ LightspeedMobileFilterUUID=="" ]
then
echo "<result>No UUID Available</result>"
else
echo "<result>$LightspeedMobileFilterUUID</result>"
fi

exit 0
