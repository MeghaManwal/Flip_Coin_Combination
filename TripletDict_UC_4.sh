#!/bin/bash

declare -A Triplet
declare -A TripletPercentage
HHH=0
HHT=0
TTH=0
THT=0
HTH=0
TTT=0
THH=0
HTT=0
read -p "Enter the number of times you want to flip a coin: " n
for((i=1;i<=n;i++))
do
   Result=$((RANDOM%8))
    if [ $Result -eq 0 ]
        then
         x=$((++HHH))
      elif [ $Result -eq 1 ]
        then
           y=$((++HHT))
      elif [ $Result -eq 2 ]
        then
         z=$((++TTH))
      elif [ $Result -eq 3 ]
        then
         p=$((++THT))
      elif [ $Result -eq 4 ]
         then
          q=$((++HTH))
       elif [ $Result -eq 5 ]
        then
         r=$((++TTT))
       elif [ $Result -eq 6 ]
        then
         s=$((++THH))
       elif [ $Result -eq 7 ]
        then
         t=$((++HTT))
     fi
done

Triplet[HHH]=$x
Triplet[HHT]=$y
Triplet[TTH]=$z
Triplet[THT]=$p
Triplet[HTH]=$q
Triplet[TTT]=$r
Triplet[THH]=$s
Triplet[HTT]=$t

echo ${Triplet[@]}
echo ${!Triplet[@]}

for i in ${!Triplet[@]}
 do
  TripletPercentage[$i]=$((${Triplet[$i]} * 100 / $n ))
 done

echo ${TripletPercentage[@]}
