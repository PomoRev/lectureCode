#!/bin/bash
#
# menu.sh
# Prof. Frank Emanuel

# This program will allow us to print out various lines from 
# the passwd file, and copy a readme file into a user's directory

# 1. Read current user's entry in passwd
# 2. Read a user's entry form passwd
# 3. copy a readme to a user's home directory

function line() {

    for ((i=0; i < $1; i++))
    do 
        echo -n '*'
    done
    echo

}

function pause() {

    echo 
    read -p 'Press enter to continue'

}


clear
line 40

read name < <(whoami);
read username <  <(grep $name /etc/passwd | cut -d':' -f 5 | cut -d',' -f 1)
echo "WELCOME TO THE MENU ${username^^}"

line 40

echo

choice=Start

while [[ ${choice::1} != 'Q' ]]
do

# Display our menu

    echo 'Enter your choice:'
    echo '(P)rint your user information'
    echo '(F)ind the info for another user'
    echo "(C)opy a readme file to a user's home"
    echo "(L)ist the files in a directory for a specific group"
    echo '(Q)uit the program'

    read choice
    choice=${choice^^}

    echo
    line 40
    echo

    # echo "Your choice is $choice"

    case ${choice::1} in 

        Q)  echo "Have a great day! $username" ;;

        P)  grep $name /etc/passwd
            pause
            ;;

        F)  read -p 'Enter a user name: ' targetname
            echo

            if [[ $(grep -iw $targetname /etc/passwd) ]]
            then
                echo "The entry for ${targetname,,} is: "
                grep -iw $targetname /etc/passwd
            else
                echo "${targetname,,} does not live here, try another house."
            fi

            echo
            pause
            ;;

        C)  read -p 'Enter a user name: ' targetname
            echo

            if [[ $(grep -iw $targetname /etc/passwd) ]]
            then
                
                read targetdirectory < <(grep -iw $targetname /etc/passwd | cut -d':' -f 6)

                echo "Target Directory: $targetdirectory/."
                echo "Copying file......"

                sudo cp ./readme.txt "$targetdirectory/."

            else
                echo "${targetname,,} does not live here, sorry about that."
            fi

            echo
            pause
            ;;

        L)  read -p 'Enter the group name: ' groupname
            echo 

            if [[ ! $(grep -i $groupname /etc/group) ]]
            then 
                echo "Sorry $groupname is not a group."
            else
                read -p 'Enter the path to check:' targetdirectory
                echo
                if [[ ! -e $targetdirectory ]]
                then
                    echo "$targetdirectory does not exist???"
                else
                    echo "Checking..."
                    echo

                    while read -a listingline 
                    do

                        if [[ ${listingline[3]} == $groupname ]]
                        then
                            echo ${listingline[@]}
                        fi

                    done < <(ls -l)


                fi
            fi 
        
            echo
            pause
            ;;

    esac



done





