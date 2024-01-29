#!/bin/bash
ID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo -e " $G scriptname $0 "
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"


VALIDATE(){
    if  [ $1 -ne 0 ]
    then
        echo -e  "ERROR :$2  $R is failed $N"
        exit 1
    else
        echo -e  "$2  $G is success $N"
    fi
    
}

if [ $ID -ne 0 ]
then
    echo -e "$R ERROR: please run this sript with root access $N"
    exit 1 #you can give otherthan 0
else 
    echo -e  "$G you are root user $N"
fi

yum install mysql -y &>> $LOGFILE
VALIDATE $? "installing mysql"
yum install git -y  &>> $LOGFILE
VALIDATE $? "installing git"