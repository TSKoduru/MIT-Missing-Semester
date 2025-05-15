#!/bin/sh


# Get the output of the file, identify lines with boot times, get the last 10
# actual entries, find the times, and then calculate the means with awk.

journalctl | grep "Startup finished" | tail -n20 | grep "\[1\]" | grep -o -P "\d\.\d\d\d" | awk '{ sum+=$1; c++ } END { print sum/c }'