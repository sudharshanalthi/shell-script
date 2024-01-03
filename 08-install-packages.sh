#!/bin/bash

ID=$(id -U)

if [ $ID -ne 0 ]
then
   echco -e "$R error:: please run this script without root access $N"
   exit 1 # uou can give other than 0
   else
       echo "you are root user"
    fi # fi means reverse of if, indicating condition end

    echco " ALL arguments passed: $@"
    
