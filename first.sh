#!/bin/bash

# First Shell Script
# Prof. Frank Emanuel

name=$(whoami)

multiplier=3
number=12

echo "Hello World! $name says hello too. The answer is $(($number * $multiplier))"

newnumber=($name + $multiplier)

echo $newnumber