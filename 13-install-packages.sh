#!/bin/bash
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
    if [$1 -ne 0 ]
    then 
    echo -e "$2 ...$R Failed $N"
    
}
ID=$(id -u)
if [ $ID -ne 0 ]
then
    echo -e "$R ERROR: please run this sript with root access $N"
    exit 1 #you can give otherthan 0
else 
    echo -e  "$G you are root user $N"
fi

#echo -e " $Y all arguments passed $G $@ $N"

for package in $@ 
do
    yum list installed $package
    if [$? -ne 0]
    then
        yum install $package -y
done