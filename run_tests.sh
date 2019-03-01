#!/usr/bin/env bash

fails=0
tests=0

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

cd test
for test in *.sh; do
    if "./${test}"; then
        echo -e "Test ${test} ${GREEN}passed.${NC}"
    else
        echo -e "Test ${test} ${RED}FAILED!${NC}"
        ((fails++))
        ((tests++))
    fi
done

if [ $fails -eq 0 ]; then
    echo -e "\n>>> ${GREEN}All tests passed!${NC}"
else
    echo -e "\n>>> ${RED}${fails}/${tests} tests failed!${NC}"
fi

exit $fails
