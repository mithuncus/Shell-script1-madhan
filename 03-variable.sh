#!/bin/bash

DATE=$(date)
echo "date and time is: ${DATE}"

CALANDER=$(cal)
echo "calander is :${CALANDER}"

HOSTNAME=$(hostname)
echo "hostname is :${HOSTNAME}"

DISKSPACE=$(df -h)
echo "diskspace is :${DISKSPACE}"

echo "script start execution :{DATE}"