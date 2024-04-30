#!/bin/sh

batt=$(/home/c0ntra/scripts/bat.py | grep "charge:" | awk '{print $2}')

while :
do
    batt
    sleep 3
    clear
done
