# Trace this code for both output and values

suits=(hearts spades diamonds clubs)

for suit in ${suits[*]}
do
    suit=${suit^^}
    for ((i=0; i<${#suits[*]}; i++))
    do
        echo -n ${suit::1}
    done
    suit=${suit,,}
    # why is this next statement risky?
    # how would I fix it?
    echo ${suit:1:$i}
done