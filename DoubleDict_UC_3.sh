#!/bin/bash 

declare -A flip
declare -A flipPercentage
HH=0
HT=0
TT=0
TH=0
x=0
y=0
z=0
p=0
read -p "Enter the number of times you want to flip a coin: " n
for((j=1;j<=n;j++))
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

for i in ${!flip[@]}
do
flipPercentage[$i]=$((${flip[$i]} * 100 / $n))
done

echo ${flipPercentage[@]}
