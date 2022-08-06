#!/bin/bash -u
#
# Variable Scope Example

test_variable=hello
another_variable=James

function foo() {

    test_variable="Well hello there"
    local another_variable="world"
    echo "$test_variable $another_variable"

}

echo "$test_variable $another_variable"
foo
echo "$test_variable $another_variable"
