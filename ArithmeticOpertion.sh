#!/bin/bash -x

read -p "Enter first Num: " x
read -p "Enter second Num: " y
read -p "Enter third Num: " z

a=$(( $x + $y * $z ))
b=$(( $z + $x / $y ))
c=$(( $x % $y + $z ))
d=$(( $x * $y + $z ))

echo $a
echo $b
echo $c
echo $d
