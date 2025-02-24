#!/bin/bash

# File to modify
FILE="yourfile.txt"

# Replace "give" with "learning" from the 5th line onward, but only in lines co>
sed -i '5,$ { /[Ww]elcome/ s/give/learning/g }' "$FILE"

echo "Replacement done in '$FILE'."
