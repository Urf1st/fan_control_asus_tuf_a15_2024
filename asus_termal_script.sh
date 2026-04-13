#!/bin/bash

while [[ "$answer" != "7" ]] do
read -p "

Which mode to toggle?
2 - Silent
0 - Balanced
1 - Perfomance
3 - Integrated Mode
4 - Hybrid Mode
5 - MUX Mode
6 - Check Mode
7 - Exit
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
    elif [[ "$answer" == "3" ]]; then
        # Integrated Mode
        supergfxctl -m Integrated
    elif [[ "$answer" == "4" ]]; then
        # Hybrid Mode
        supergfxctl -m Hybrid
    elif [[ "$answer" == "5" ]] then
        # MUX
        supergfxctl -m AsusMuxDgpu
    elif [[ "$answer" == "6" ]]; then
        # Check Mode
        supergfxctl -g
    else
        echo "Exit"
    fi
done

kill $(ps -o ppid= -p $PPID)