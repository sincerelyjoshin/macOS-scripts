#!/bin/sh

LEGACY_CBD_APP_INSTALL_PREFIX='/Applications/Confer.app'
CBC_APP_INSTALL_PREFIX='/Library/Application Support/com.vmware.carbonblack.cloud'

RESULTS=()
if [ -f "${LEGACY_CBD_APP_INSTALL_PREFIX}/cfg.ini" ] || [ -f "${CBC_APP_INSTALL_PREFIX}/Config/cfg.ini" ]; then
	/bin/echo "Previous sensor installation detected."
	RESULTS=`/Applications/VMware\ Carbon\ Black\ Cloud/repcli.bundle/Contents/MacOS/repcli version`
	/bin/echo "<result>$RESULTS</result>"
else
	/bin/echo "<result></result>"
fi

exit 0