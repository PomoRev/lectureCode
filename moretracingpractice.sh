# Trace this code for both output and values
# What goes on in those crazy function?
# The function takes two words as parameters 

function palendrome() {

    palstate=0

    local word=${1^^}
    bounds=${#word}
    let bounds-=1
    i=0

    while [[ i -le bounds ]]
    do
        if [[ ${word:$i:1} != ${word:$bounds:1} ]]
        then
            let palstate=1
        fi
        let i++
        let bounds--
    done

    return $palstate

}

words=$@

for word in ${words[@]}
do
    if palendrome $word
    then
        echo "$word is a palendrome"
    else
        echo "$word is not a palendrome"
    fi
done