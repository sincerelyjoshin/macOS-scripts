#!/bin/sh

if [ -d /Library/Java/Home ]
  then
    JavaVersion=$(java -version 2>&1 | /usr/bin/awk '/version/{print $3}' | /usr/bin/sed 's/"//g')
  else
    JavaVersion="Java runtime not installed"
fi

if [ -z JavaVersion ]
  then
    JavaVersion="Java runtime version not available"
fi

/bin/echo $JavaVersion

exit 0
