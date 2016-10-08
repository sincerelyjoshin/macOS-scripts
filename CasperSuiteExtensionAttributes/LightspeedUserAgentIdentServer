#!/bin/bash

if [ -a /usr/local/bin/useragent ]
then
LightspeedUserAgentIdentServer=`sudo defaults read useragent IdentServer`
else
LightspeedUserAgentIdentServer="Not Installed"
fi

if [ LightspeedUserAgentIdentServer=="" ]
then
echo "<result>IdentServer not configured</result>"
else
echo "<result>$LightspeedUserAgentIdentServer</result>"
fi

exit 0
