#!/bin/sh

# Print out the words -> Get rid of anything ending with a 's 
# Then match lines with at least 3 'a'
cat words | sed "/'s$/d" | grep -E "^[^a]*(a[^a]*){3}$"

# Expand on that by getting the last 2 chars in each line, then
# counting hte occurance of each ending.
grep -o '.\{2\}$' | sort | uniq -c | sort -nr

# Add a wc to figure out how many unique lines
wc -l

