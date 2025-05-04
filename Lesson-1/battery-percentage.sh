#!/bin/sh

echo "Finding battery percentage..."
energy_now=$(cat /sys/class/power_supply/BAT1/energy_now)
energy_total=$(cat /sys/class/power_supply/BAT1/energy_full)
energy_percent=$((100*energy_now/energy_total))
echo "Battery percentage is: $energy_percent"