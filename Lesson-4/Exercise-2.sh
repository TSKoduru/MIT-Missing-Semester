#!/bin/sh

# Doing something like sed s/REGEX/SUBSTITUTION/ input.txt > input.txt is bad 
# because when we tell the shell we're outputting to input.txt, it automatically
# clears it before sed starts, so sed will read an empty file.
# This applies to all commands, not just sed!

# To get around it, use the -i, or in-place, option, which should handle it.