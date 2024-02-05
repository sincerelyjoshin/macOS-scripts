#!/bin/sh

if [ -a /Library/Application\ Support/Macromedia/mms.cfg ]
	then
		mv /Library/Application\ Support/Macromedia/mms.cfg /Library/Application\ Support/Macromedia/mms.cfg.bk
		touch /Library/Application\ Support/Macromedia/mms.cfg
		echo "AutoUpdateDisable =1" >> /Library/Application\ Support/Macromedia/mms.cfg
		echo "SilentAutoUpdateEnable=0" >> /Library/Application\ Support/Macromedia/mms.cfg
		chown root:admin /Library/Application\ Support/Macromedia/mms.cfg
		chmod 644 /Library/Application\ Support/Macromedia/mms.cfg
elif [ -d /Library/Application\ Support/Macromedia ]
	then
		touch /Library/Application\ Support/Macromedia/mms.cfg
		echo "AutoUpdateDisable =1" >> /Library/Application\ Support/Macromedia/mms.cfg
		echo "SilentAutoUpdateEnable=0" >> /Library/Application\ Support/Macromedia/mms.cfg
		chown root:admin /Library/Application\ Support/Macromedia/mms.cfg
		chmod 644 /Library/Application\ Support/Macromedia/mms.cfg
else
		mkdir /Library/Application\ Support/Macromedia
		chown root:admin /Library/Application\ Support/Macromedia/
		chmod 775 /Library/Application\ Support/Macromedia/
		touch /Library/Application\ Support/Macromedia/mms.cfg
		echo "AutoUpdateDisable =1" >> /Library/Application\ Support/Macromedia/mms.cfg
		echo "SilentAutoUpdateEnable=0" >> /Library/Application\ Support/Macromedia/mms.cfg
		chown root:admin /Library/Application\ Support/Macromedia/mms.cfg
		chmod 644 /Library/Application\ Support/Macromedia/mms.cfg
fi

exit 0
