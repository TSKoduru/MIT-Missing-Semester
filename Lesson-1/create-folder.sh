cd /tmp
mkdir missing
cd missing
touch semester.sh
echo '#!/bin/sh' >> semester.sh
echo "curl --head --silent https://missing.csail.mit.edu" >> semester.sh
#   ./semester.sh doesn't work because we don't have execute permission on the file.
# sh semester works because the sh program does have those permissions.
chmod +x semester.sh
./semester.sh # Now works because we have the proper missions
./semester.sh | grep "modified" > last-modified.txt