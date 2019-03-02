#!/usr/bin/env bash

compl_ref=$'--binary\n--check\n--help\n--ignore-missing\n--quiet\n--status\n--strict\n--tag\n--text\n--version\n--warn'
compl=$(../bash-complete-api -- _longopt 1 9 "md5sum --")

if [ "$compl" == "$compl_ref" ]; then
    exit 0
else
    echo "> EXPECTED:"
    printf "%s\n" "$compl_ref"
    echo "> GOT:"
    printf "%s\n" "$compl"
    exit 1
fi
