#!/bin/sh

loggedInUser=`python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u"", u"ladmin"]]; sys.stdout.write(username + "\n");'`

if [ -z $loggedInUser ]
  then
    echo "abort"
    exit 1
  else
    echo $loggedInUser
fi

#uninstall currently installed printers
lpstat -p | awk '{print $2}' | while read printer
do
echo "Deleting Printer: ${printer}"
lpadmin -x $printer
done

if [ -d /Users/$loggedInUser/Library/Printers/ ]
  then
    chown root:wheel /Users/$loggedInUser/Library/Printers/
    rm -rf /Users/$loggedInUser/Library/Printers/*
fi

if [ -d /Library/Printers/Installed_Printers ]
  then
    ln -s /Library/Printers/Installed_Printers /Users/$loggedInUser/Library/Printers
  else
    mkdir /Library/Printers/Installed_Printers
    ln -s /Library/Printers/Installed_Printers /Users/$loggedInUser/Library/Printers
fi

exit 0
