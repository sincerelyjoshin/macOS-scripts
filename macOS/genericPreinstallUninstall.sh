#!/bin/bash

targetApp="/Path/To/Application.app"

if [ -d "${targetApp}" ]
	then
		/bin/echo "${targetApp} found on disk"
		/bin/rm -R "${targetApp}"
		/bin/echo "${targetApp} removed"
	else
		/bin/echo "${targetApp} not found on disk"
fi

exit 0
