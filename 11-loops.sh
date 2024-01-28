#!/bin/bash
ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)

echo "scriptname $0 "

LOGFILE="/tmp/$0-$TIMESTAMP.log"


VALIDATE(){
    if  [ $1 -ne 0 ]
    then
        echo "ERROR :$2  is failed"
        exit 1
    else
        echo "$2 is success"
    fi
    
}

if [ $ID -ne 0 ]
then
    echo "ERROR: please run this sript with root access"
    exit 1 #you can give otherthan 0
else 
    echo "you are root user"
fi

yum install mysql -y &>> $LOGFILE
VALIDATE $? "installing mysql"
yum install git -y  &>> $LOGFILE
VALIDATE $? "installing git"