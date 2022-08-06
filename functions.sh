#!/bin/bash
#
# fun

function morefun() {

    echo "Inside functon there are $# parameters"
    echo "$1 and $2"
    echo "leaving the function now"

}


echo "fromthe command line I have $# parameters"

echo "$1 and $2 and $3"

echo "leaving for the function now."

morefun $2 "bob"

echo "outside of function morefun() I have $# parameters"

echo "$1 and $2 and $3"

