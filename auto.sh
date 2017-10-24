#!/bin/bash
n=0
while n<100
do
    ./phone_msg
    sleep 6
    kill -s 9 `ps -aux | grep phone_msg | grep -v grep awk '{print $2}' `
    if n%3 == 0
        sleep 30
    fi
done
