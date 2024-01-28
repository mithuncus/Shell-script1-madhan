#!/bin/bash
ID=$(id -u)

echo "scriptname $0 "


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

yum install mysql -y
VALIDATE $? "installing mysql"
yum install git -y 
VALIDATE $? "installing git"