#!/bin/bash -u
#
# Linear with Check Script
# Prof. Frank Emanuel

echo $PATH

PATH="/bin:/usr/bin"; export PATH

echo $PATH

file_name='hello'
file_extension='txt'

# touch $file_name'.'$file_extension


if [[ -e $file_name'.'$file_extension ]]
then

    echo "Whoah! File already exists!" >&2

else

    echo "Hey What are you doing?" > $file_name'.'$file_extension
    pwd
    ls -l *'.'$file_extension

fi 




