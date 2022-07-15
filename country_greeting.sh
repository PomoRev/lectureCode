#!/bin/bash -u
#
# This code takes a country name as a command 
# line parameter and attempts to form an
# appropriate greeting
#
# Prof. Frank Emanuel, 2022

prepend=true;

case $1 in

    Canada)
        echo "$USER g'day eh"
        prepend=false
        ;;

    Australia)
        echo "$USER g'day mate"
        prepend=false
        ;;

    India | Pakistan | Nepal)
        echo -n "Namaste"
        ;;

    Italy)
        echo -n "Ciao"
        ;;

    Brazil | Portugal)
        echo -n "Ola"
        ;;

    Spain | Mexico)
        echo -n "Hola"
        ;;

    China)
        echo -n "Ni hao"
        ;;

    Germany | Holland)
        echo -n "Hallo"
        ;;
    
    France)
        echo -n "Bonjour"
        ;;

    Egypt | Iraq | Yemen | "Saudi Arabia")
        echo -n "Marhaba"
        ;;

    USA)
        echo "${USER}, hey I'm walking here!"
        prepend=false
        ;;

    *)
        echo -n "Yo"
        ;;

esac


if [[ $prepend == true ]]; then echo " $USER"; fi