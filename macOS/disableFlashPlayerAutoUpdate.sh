#!/bin/sh

if [ -a /Library/Application\ Support/Macromedia/mms.cfg ]
	then
		/bin/mv /Library/Application\ Support/Macromedia/mms.cfg /Library/Application\ Support/Macromedia/mms.cfg.bk
		/usr/bin/touch /Library/Application\ Support/Macromedia/mms.cfg
		/bin/echo "AutoUpdateDisable =1" >> /Library/Application\ Support/Macromedia/mms.cfg
		/bin/echo "SilentAutoUpdateEnable=0" >> /Library/Application\ Support/Macromedia/mms.cfg
		/usr/sbin/chown root:admin /Library/Application\ Support/Macromedia/mms.cfg
		/bin/chmod 644 /Library/Application\ Support/Macromedia/mms.cfg
elif [ -d /Library/Application\ Support/Macromedia ]
	then
		/usr/bin/touch /Library/Application\ Support/Macromedia/mms.cfg
		/bin/echo "AutoUpdateDisable =1" >> /Library/Application\ Support/Macromedia/mms.cfg
		/bin/echo "SilentAutoUpdateEnable=0" >> /Library/Application\ Support/Macromedia/mms.cfg
		/usr/sbin/chown root:admin /Library/Application\ Support/Macromedia/mms.cfg
		/bin/chmod 644 /Library/Application\ Support/Macromedia/mms.cfg
else
		/bin/mkdir /Library/Application\ Support/Macromedia
		/usr/sbin/chown root:admin /Library/Application\ Support/Macromedia/
		/bin/chmod 775 /Library/Application\ Support/Macromedia/
		/usr/bin/touch /Library/Application\ Support/Macromedia/mms.cfg
		/bin/echo "AutoUpdateDisable =1" >> /Library/Application\ Support/Macromedia/mms.cfg
		/bin/echo "SilentAutoUpdateEnable=0" >> /Library/Application\ Support/Macromedia/mms.cfg
		/usr/sbin/chown root:admin /Library/Application\ Support/Macromedia/mms.cfg
		/bin/chmod 644 /Library/Application\ Support/Macromedia/mms.cfg
fi

exit 0
