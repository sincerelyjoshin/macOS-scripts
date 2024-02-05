#!/bin/sh

CURRENT_USER=$(/bin/ls -la /dev/console | /usr/bin/cut -d " " -f 4)

/usr/bin/lpstat -p | awk '{print $2}' | while read printer
do
	/bin/echo "Deleting Printer: ${printer}"
	/usr/bin/lpadmin -x $printer
done

if [ -d /Users/$loggedInUser/Library/Printers/ ]
then
	/usr/sbin/chown root:wheel /Users/$loggedInUser/Library/Printers/
	/bin/rm -rf /Users/$loggedInUser/Library/Printers/*
fi

if [ -d /Library/Printers/Installed_Printers ]
then
	/bin/ln -s /Library/Printers/Installed_Printers /Users/$loggedInUser/Library/Printers
else
	/bin/mkdir /Library/Printers/Installed_Printers
	/bin/ln -s /Library/Printers/Installed_Printers /Users/$loggedInUser/Library/Printers
fi

exit 0
