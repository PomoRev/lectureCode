# restrict ls -l to just files with greater than 999 bytes. 

while read -a lsline
do
    if [[ ${#lsline[4]} > 3 ]]
    then
        echo "${lsline[8]} is superlarge!"
    fi
done < <( ls -l )

echo "Done"