#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]
then
    echo "ERROR: please run this script with root access"
else
    echo "you are root user"
fi # fi means reverse of if, indicating condition end
yum install mysql -y

if [ $? -ne 0 ]
then
    echo "ERROR: Installing  mysql is failed"
    exit 1

else
    echo "installinf mysql is success"

fi

yum install git -y

if [ $? -ne 0 ]
then
    echo "ERROR: please installing git failed"
    exit 1
else
    echo "installation of git is success"
fi
