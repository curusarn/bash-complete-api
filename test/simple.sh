#!/usr/bin/env bash

compl_ref=$'this\nis\nsimple\ntest'
compl=$(../bash-complete-api --source simple/compl -- _compl 2 5 "compl ")

if [ "$compl" == "$compl_ref" ]; then
    exit 0
else
    echo "> EXPECTED:"
    printf "%s\n" "$compl_ref"
    echo "> GOT:"
    printf "%s\n" "$compl"
    exit 1
fi
