#!/bin/bash

declare -A flip

Heads=1
TAILS=0
read -p "Enter the number of times you want to flip a coin: " n
j=0
for((i=1;i<=n;i++))
do
   Result=$((RANDOM%2))
        if [ ${Result} -eq $Heads ]
         then
           echo "HEADS"
                N=$((++HEADS))
            flip["$j"]="H"
         else
           echo "TAILS"
                M=$((++TAILS))
          flip["$j"]="T"
        fi
j=$((++j))
done

echo ${flip[@]}
echo ${!flip[@]}
P=$((($N* 100)/$n))
Q=$((($M* 100)/$n))
echo "Heads Appear: "$N "Times" "Head Appear Percentage "$P
echo "Tails Appear: "$M "Times" "Tails Appear Percentage "$Q
