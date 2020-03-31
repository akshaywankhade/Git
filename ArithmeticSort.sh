#!/bin/bash -x

function asendingorder() {
	for (( i=1 ; i<=4 ; i++ ))
	do
		for (( j=1 ; j<=4 ; j++ ))
		do
			if [ ${array[$i]} -lt ${array[$j]} ]
			then
				temp=${array[$i]};
				array[$i]=${array[$j]};
				array[$j]=$temp;
			fi
		done
	done
}

function desendingorder() {
	for (( i=1 ; i<=4 ; i++ ))
	do
		for (( j=1 ; j<=4 ; j++ ))
		do
			if [ ${array[$i]} -gt ${array[$j]} ]
			then
				temp=${array[$i]};
				array[$i]=${array[$j]};
				array[$j]=$temp;
			fi
		done
	done
}

read -p "Enter first Num: " x
read -p "Enter second Num: " y
read -p "Enter third Num: " z

declare result
result[exp1]=$(( $x + $y * $z ))
result[exp2]=$(( $x * $y + $z ))
result[exp3]=$(( $z + $x / $y ))
result[exp4]=$(( $x % $y + $z ))

for (( i=1 ; i<=4 ; i++ ))
do
	eval array[$i]=${result[exp$i]}
done

asendingorder
echo "Asending order is: ${array[@]}"

desendingorder
echo "Desending order is: ${array[@]}"
