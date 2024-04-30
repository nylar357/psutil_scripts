#!/bin/sh

if [[ -f "/proc/acpi/bbswitch" ]]; then

    bb_status=$(cat /proc/acpi/bbswitch | awk -F ' ' '{print $2}')
    if [[ "$bb_status" = "ON" ]]; then

        t=$(nvidia-smi -q -d TEMPERATURE | grep "GPU Current Temp" | awk -F ' ' '{ print $5 }')

        echo /home/nylar/config/tint2/images/nvidia.svg;
        echo ${t}"℃"

    elif [[ "$bb_status" = "OFF" ]]; then
        echo /home/nylar/.config/tint2/images/nvidia-off.svg
    fi
else
    echo /home/nylar/.config/tint2/images/nvidia-off.svg
fi
