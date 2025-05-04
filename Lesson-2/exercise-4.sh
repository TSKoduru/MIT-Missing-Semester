 #!/usr/bin/env bash

# Find all zip files in the directory and output them to a .tar
find . -name "*.html" | xargs tar cf ./test.tar