#!/bin/bash -u
#
# Fun with Functions and Parameters

echo $1

function fun {

    echo $1

}

fun Hello world
fun "Hello World"
fun "$1"
fun $1
echo $1

