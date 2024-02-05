#!/bin/bash

CURRENT_USER=$(/bin/ls -la /dev/console | /usr/bin/cut -d " " -f 4)
SETTINGS='{
"update.mode": "none" 
}'

/bin/mkdir -p /Users/$CURRENT_USER/Library/Application\ Support/Code/User/

/bin/cat << EOD > /Users/$CURRENT_USER/Library/Application\ Support/Code/User/settings.json
${SETTINGS}
EOD

/usr/sbin/chown -R $CURRENT_USER /Users/$CURRENT_USER/Library/Application\ Support/Code/

exit 0