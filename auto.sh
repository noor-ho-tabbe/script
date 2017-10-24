#!/bin/bash
n=1
while (( $n < 100 ))
do
    echo "n=" $n
    tmp=$(($n % 3))
    sleep 2
    # kill -s 9 `ps -aux | grep phone_msg | grep -v grep awk '{print $2}' `
    if [ $tmp -eq 0 ]; then
        echo "test"
    fi
    ((n++))
done
