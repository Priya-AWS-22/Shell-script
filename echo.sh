#!/bin/bash/
echo line1
echo line2

#print multiple lines using echo command
#We need to so escape squence char
# \n : Move the cursor to next line
# \t : Cursor to tab space print line in next line


echo lineA\nlineB

#-e : Enable escape squence

echo -e "lineA\n\tlineB"