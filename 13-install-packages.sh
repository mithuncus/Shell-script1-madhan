#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]
then
    echo -e "$R ERROR: please run this sript with root access $N"
    exit 1 #you can give otherthan 0
else 
    echo -e  "$G you are root user $N"
fi

echo "all arguments passed $@"