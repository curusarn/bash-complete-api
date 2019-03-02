#!/usr/bin/env bash

cd "cd"
compl_ref=$'testdir'
compl=$(../../bash-complete-api -- _cd 1 1 "")

if [ "$compl" == "$compl_ref" ]; then
    exit 0
else
    echo "> EXPECTED:"
    printf "%s\n" "$compl_ref"
    echo "> GOT:"
    printf "%s\n" "$compl"
    exit 1
fi
