
# Find the most recently modified file in a directory, recursively.
find . -type f -exec ls -t {} + | head -1

# Note that this is set up to print the single most recently modified file,
# but you can just get rid of the head part to print them all.