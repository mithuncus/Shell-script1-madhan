#!/bin/bash
ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo -e " $G scriptname $0 "
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
echo " script started executing $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [$1 -ne 0]
    then
        echo -e "$2 ... $R FAILED $N"
    else    
        echo -e "$1 ... $G Success $N"

    fi
}

if [ $ID -ne 0]
then
    echo -e " $R ERROR: Please run this as aroot user $N"
else
    echo -e " $G you are root user $N"

fi

cp mongo.repo /etc/yum.repos.d/ &>> $LOGFILE
VALIDATE $? "copied the mongo repo"


