#!/bin/bash
# Loop start and kill a process

n=1
while (( $n < 20 ))
do
    echo "n=" $n
    tmp=$(($n % 3))
    sleep 2
    kill -s 9 `ps -aux | grep phone_msg | grep -v grep | awk '{print $2}' `
    if [ $tmp -eq 0 ]; then
        sleep 3
        echo "Waiting for phone to exit !"
    fi
    ((n++))
done
