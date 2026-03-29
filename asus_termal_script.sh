#!/bin/bash

while [[ "$answer" != "3" ]] do
read -p "Which mode to toggle?
2 - Silent
0 - Balanced
1 - Perfomance
3 - Exit
: " answer

    if [[ "$answer" == "2" ]]; then
        # Silent
        echo 2 | sudo tee /sys/devices/platform/asus-nb-wmi/throttle_thermal_policy
        echo You successfully toggled Silent mode
        elif [[ "$answer" == "0" ]]; then
        # Balanced mode
        echo 0 | sudo tee /sys/devices/platform/asus-nb-wmi/throttle_thermal_policy
        echo You successfully toggled Balanced mode
    elif [[ "$answer" == "1" ]]; then
        # Performance
        echo 1 | sudo tee /sys/devices/platform/asus-nb-wmi/throttle_thermal_policy
        echo You successfully toggled Performance mode
    else
        echo "Exit"
    fi
done

kill $(ps -o ppid= -p $PPID)