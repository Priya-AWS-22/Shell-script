#!/bin/bash

echo "Multi line comment"

<<COMMENT
a=10
echo $a
echo "printing value"
COMMENT
