#!/bin/sh

BAT0=$(cat /sys/class/power_supply/BAT0/capacity)
BAT1=$(cat /sys/class/power_supply/BAT1/capacity)

    
AVG=$[($BAT0+$BAT1) / 2]

if  [ "$AVG" -ge "90" ]; then
    echo "  $AVG%"
elif [ "$AVG" -ge "75" ]&&[ "$AVG" -lt "90" ]; then
    echo "  $AVG%"
elif [ "$AVG" -ge "50" ]&&[ "$AVG" -lt "75" ]; then
    echo "  $AVG%"
elif [ "$AVG" -ge "25" ]&&[ "$AVG" -lt "50" ]; then
    echo "  $AVG%"
elif [ "$AVG" -ge "0" ]&&[ "$AVG" -lt "25" ]; then
    echo "  $AVG%"
fi
