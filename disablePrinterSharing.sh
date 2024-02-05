#!/bin/bash

if [[ $(grep "Browsing On" /private/etc/cups/cupsd.conf) ]]
then 
	/usr/sbin/cupsctl --no-share-printers
else 
	exit 0
fi

exit 0
