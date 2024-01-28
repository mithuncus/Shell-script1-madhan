#!/bin/bash
ID=${id -u}

VALIDATE(){
    if  [ $? -ne 0 ]
    then
        echo "ERROR : installation is failed"
        exit 1
    else
        echo "installation is success"
    fi
    
}

if [ $ID -ne 0]
then
    echo "ERROR: please run this sript with root access"
    exit 1 #you can give otherthan 0
else 
    echo "you are root user"
fi

yum install mysql -y
VALIDATE
yum install git -y 
VALIDATE
