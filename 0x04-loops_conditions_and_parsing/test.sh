#!/bin/bash

# String
#text="Welcome to GeeksforGeeks"

# Set space as the delimiter
IFS=':'

# Read the split words into an array
# based on space delimiter
read -ra newarr <<< "$text"


# Print each value of the array by using
# the loop
for val in "${newarr[@]}";
do
 echo "$val"
done
