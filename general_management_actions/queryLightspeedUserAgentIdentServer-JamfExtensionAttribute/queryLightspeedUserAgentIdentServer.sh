#!/bin/bash

if [ -a /usr/local/bin/useragent ]
then
LightspeedUserAgentIdentServer=`/usr/bin/defaults read useragent IdentServer`
else
LightspeedUserAgentIdentServer="Not Installed"
fi

if [ LightspeedUserAgentIdentServer=="" ]
then
LightspeedUserAgentIdentServer="IdentServer not configured"
fi

echo $LightspeedUserAgentIdentServer

exit 0
