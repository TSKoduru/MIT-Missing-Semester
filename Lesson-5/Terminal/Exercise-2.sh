#!/bin/sh

# First, create a countdown using sleep in the background
sleep 30 &

# Then, use the wait command to wait for that sleep to finish and then execute
# an ls right after
wait %1; ls