#!/bin/sh

if [ -d /Library/Java/Home ]
  then
    JavaVersion=$(java -version 2>&1 | awk '/version/{print $3}' | sed 's/"//g')
  else
    JavaVersion="Java runtime not installed"
fi

if [ -z JavaVersion ]
  then
    JavaVersion="Java runtime version not available"
fi

echo "<result>$JavaVersion</result>"

exit 0
