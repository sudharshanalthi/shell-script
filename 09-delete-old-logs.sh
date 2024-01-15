#!bin/bash

SOURCE_DIR=/tmp/shellscript-logs

ID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"

if[ ! -d $SOURCE_DIR] # ! denotes opposite
then 
    echo -e "$R SOURCE directory: $SOURCE_DIR does not exists. $N"
    fi

FILES_TO_DELETE=$(find . -type f -mtime +14 -name "*.log")

while IFS= read -r line
do
    echo "deletting file: $line"
done <<< $FILES_TO_DELETE