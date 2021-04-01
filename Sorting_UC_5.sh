#!/bin/bash

read -p "Enter the number of times you want to flip a coin: " n
SingletDict () {
declare -A flip
Heads=1
j=0
for((i=1;i<=n;i++))
do
   Result=$((RANDOM%2))
        if [ ${Result} -eq $Heads ]
         then
                N=$((++HEADS))
            flip["$j"]="H"
         else
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

if [ $P -gt $Q ]
  then
     echo " Heads Won"
    elif [ $P -lt $Q ]
     then
       echo "Tails Won"
      else
         echo "Both are equal"
fi
}
SingletDict $n

read -p "Enter the number of times you want to flip a coin: " m
DoubleDict (){
declare -A flip
declare -A flipPercentage
HH=0
HT=0
TT=0
TH=0
for((k=1;k<=m;k++))
do
   Result=$((RANDOM%4))
        if [ $Result -eq 0 ]
         then
           x=$((++HH))
        elif [ $Result -eq 1 ]
        then
           y=$((++HT))
        elif [ $Result -eq 2 ]
        then
           z=$((++TT))
        elif [ $Result -eq 3 ]
        then
           p=$((++TH))
        fi
done
flip[HH]=$x
flip[HT]=$y
flip[TT]=$z
flip[TH]=$p
echo ${flip[@]}
echo ${!flip[@]}

for l in ${!flip[@]}
do
flipPercentage[$l]=$((${flip[$l]} * 100 / $m))
done
echo ${flipPercentage[@]}
printf '%s\n' "${flipPercentage[@]}" | sort -n
win=$(printf '%s\n'  "${flipPercentage[@]}" | sort -n |tail -1)
echo "Winning combination percentage: " $win
}
DoubleDict $m

read -p "Enter the number of times you want to flip a coin: " e
TripletDict() {
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
for((f=1;f<=e;f++))
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
  TripletPercentage[$i]=$((${Triplet[$i]} * 100 / $e ))
done

echo ${TripletPercentage[@]}
printf '%s\n' "${TripletPercentage[@]}" | sort -n
win=$(printf '%s\n'  "${TripletPercentage[@]}" | sort -n |tail -1)
echo "Winning combination percentage: "$win
}
TripletDict $e
