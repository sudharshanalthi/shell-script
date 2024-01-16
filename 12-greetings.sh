#!/bin/bash

NAME=""
WISHES="Good Morning"

USAGE(){
    echo "USAGE:: $(basename $0) -n <name> -w <wishes>"
    echo "Options::"
    echo " -n, Specify the name (mandatory)"
    echo " -w, Specify the wishes. (optional). Default is Good Morning"
    echo " -h, Display Help and exit"
}

while getopts ":n:w:h" opt; do
    case $opt in
         n) NAME="$OPTARG";;
         W) WISHES="$OPTARG";;
         \?) echo "invalid options: -"$OPTARG"" >&2; USAGE; exit;;
         :) USAGE; exit;;
          h) USAGE; exit;;
    esac
done

#if [ -z "$NAME" ] || [ -Z "$WISHES" ]; then
if [ -z "$NAME" ]; then # now wishes is optional
   # echo "ERROR: Both -n and -w are mandatory options."
   echo "ERROR: -n is mandatory."
    USAGE
    exit 1

fi

echo "Hello $NAME. $WISHES. I have been learning shell script."
    
    
    
    
