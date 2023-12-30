#!/bin/bash

ID=$(id -u)

VALIDATE(){
if [ $? -ne 0 ]
    then
        echo "ERROR:: Installing Mysql is failed"
        exit 1
    else 
        echo "Installing Mysql is success"
    fi
}

if [ $ID -ne 0 ]
then
    echo "ERROR:: please run this script with root access"
else
    echo "you are root user"
    fi 

    Yum install mysql -y

    VALIDATE

    Yum install git -y

    VALIDATE