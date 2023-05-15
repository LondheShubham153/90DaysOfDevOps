#!/bin/bash

#!/bin/bash

# create a file
touch test_file.txt

# list the file details before changing permissions
echo "Before changing permissions:"
ls -ltr test_file.txt

# change the permissions to read, write, and execute for owner, read and execute for group, and read-only for others
chmod 754 test_file.txt

# list the file details after changing permissions
echo "After changing permissions:"
ls -ltr test_file.txt

