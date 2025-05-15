#!/bin/sh

# Take the last 3 logs, combine them, shove them through grep to get rid of 
# some filler text, and then sort and output lines that don't happen exactly
# 3 times.

 { journalctl -b; journalctl -b -1; journalctl -b -2; } | grep -o "T.*$" | uniq -c | sort -nr | grep -v '^[[:space:]]*3[[:space:]]'