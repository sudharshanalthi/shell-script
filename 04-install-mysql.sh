#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
    echo "ERROR:: please run this script with root access"
else
    echo "you are root user"
    fi 

    yum install mysql -y

    if [ $? -ne 0 ]
    then
        echo "ERROR:: Installing Mysql is failed"
        exit 1
    else 
        echo "Installing Mysql is success"
    fi


    yum install git -y
    
    if [ $? -ne 0 ]
    then
        echo "ERROR:: Installing Git is failed"
        exit 1
    else 
        echo "Installing Git is success"
    fi