#!/bin/bash 

# set -e 

COMPONENT=mongo
LOGFILE="/tmp/$COMPONENT.log"

# Validting whether the executed user is a root user or not 
ID=$(id -u)

if [ "$ID" -ne 0 ] ; then 
    echo -e "\e[31m You should execute this script as a root user or with a sudo as prefix \e[0m" 
    exit 1
fi 

stat() {
    if [ $1 -eq 0 ] ; then
        echo -e "\e[32m Success \e[0m"
    else 
        echo -e "\e[31m Failure \e[0m"
        exit 2
fi 

}

echo -n "configuring the $COMPONENT repo :"
curl -s -o /etc/yum.repos.d/mongodb.repo https://raw.githubusercontent.com/stans-robot-project/mongodb/main/mongo.repo
stat $?

echo -n "installing $COMPONENT :"
yum install -y mangodb-org &>> $LOGFILE
stat $?

echo -n "starting $COMPONENT :"
systemctl enable mongod &>> $LOGFILE
systemctl start mongod &>> $LOGFILE
stat $?
