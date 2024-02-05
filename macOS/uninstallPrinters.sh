#!/bin/sh

/usr/bin/lpstat -p | /usr/bin/awk '{print $2}' | while read printer
do
/bin/echo "Deleting Printer: ${printer}"
/usr/bin/lpadmin -x $printer
done

exit 0
