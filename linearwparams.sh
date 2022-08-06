#!/bin/bash -u
#
# Linear with Check and Command line Parameters
# Prof. Frank Emanuel

file_name=$1
file_extension=$2

# touch $file_name'.'$file_extension

echo $@

if [[ $# -lt 4 ]]
then

    if [[ -e $file_name'.'$file_extension ]]
    then

    echo "Whoah! File already exists!" >&2

    else

    echo "Hey What are you doing?" > $file_name'.'$file_extension
    pwd
    ls -l *'.'$file_extension

    fi 

else 

    shift 2

    echo $@

        if [[ -e $1'.'$2 ]]
        then

        echo "Whoah! File already exists!" >&2

        else

        echo "Hey What are you doing?" > $1'.'$2
        pwd
        ls -l *'.'$2

        fi 

fi


