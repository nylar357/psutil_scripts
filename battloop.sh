#!/bin/sh

batt="$(python3 /home/c0ntra/scripts/battery.py | grep "charge" | awk '{print $2}'


while true; 
do 
    batt
    sleep 3;
    clear;
    done
