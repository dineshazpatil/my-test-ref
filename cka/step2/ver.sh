#!/bin/bash

# expected image and command

expected_count='6'

# verify pod status
file_count=$(cat /tmp/fepodcount.txt)

if [ "$file_count" == "$expected_count" ]; then
   echo "Pod count $file_count is correct "
else
   echo "Pod count $file_count is not correct"
   exit 1
fi