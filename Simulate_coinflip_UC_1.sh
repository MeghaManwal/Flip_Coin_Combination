#!/bin/bash  -x

Heads=1
TAILS=0

Result=$((RANDOM%2))
if [ ${Result} -eq $Heads ]
 then
    echo "HEADS"
 else
    echo "TAILS"
fi
