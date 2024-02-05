#!/bin/bash

/usr/sbin/dseditgroup -o edit -n /Local/Default -a staff -t group lpadmin

exit 0