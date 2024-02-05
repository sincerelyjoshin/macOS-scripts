#!/bin/bash

if [[ $(grep "Browsing On" /private/etc/cups/cupsd.conf) ]]
then 
	cupsctl --no-share-printers
else 
	exit 0
fi

exit 0
