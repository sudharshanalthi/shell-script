#!/bin/bash

ID=$(id -u)

if [$ID -ne 0 ]
then
    echo "ERROR:: please run this script with root access"
else
    echo "you atre root user"
    fi 