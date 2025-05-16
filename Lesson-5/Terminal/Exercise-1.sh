#!/bin/sh

# First, create a background sleep job
sleep 10000 & 

# We can use pgrep to list out the sleep process
pgrep sleep 

# Then we can use pkill to kill that process
pkill sleep

# Other cool things to note:

# ps to list out all ongoing processes for the current user
ps

# ps aux to list out all ongoing processes, for all users
ps aux

# jobs to list out currently running bg processes
jobs