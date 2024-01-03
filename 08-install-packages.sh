#!/bin/bash

ID=$(id -U)
R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ $ID -ne 0 ]
then
   echco -e "$R error:: please run this script without root access $N"
   exit 1 # uou can give other than 0
   else
       echo "you are root user"
    fi # fi means reverse of if, indicating condition end

    echo " ALL arguments passed: $@"
    

