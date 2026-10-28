#!/bin/bash
if [ -z "$1" ]
then
echo "Usege: ping.sh <logfile>" >&2
exit 1
fi
for adr in 1.1.1.1 8.8.8.8 10.255.255.1
do
if ping -c 1 "$adr" >> "$1" 2>&1 
then
echo "$adr OK" >> "$1" 2>&1
else
echo "$adr FAIL" >> "$1" 2>&1
fi
done
