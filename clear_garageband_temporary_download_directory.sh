#!/bin/bash

CURRENT_USER=$(/bin/ls -la /dev/console | /usr/bin/cut -d " " -f 4)

function clearContainerDir {
	if [ -d /Users/$CURRENT_USER/Library/Containers/com.apple.garageband10 ]
	then
		/bin/rm -rf /Users/$CURRENT_USER/Library/Containers/com.apple.garageband10
		/usr/bin/find /var/folders/ -name "lp10_ms3_content_2016" -type d -exec rm -r "{}" \;
	else
		/bin/echo "com.apple.garageband10 directory does not exist in ~/Library/Containers"
	fi
}

exit 0