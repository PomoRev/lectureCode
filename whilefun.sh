count=0

ls | while read line
do

    echo "---> $line: $count";
    ((count = count + 1));  

done

echo "$count lines"



