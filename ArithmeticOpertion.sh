#!/bin/bash -x

read -p "Enter first Num: " a
read -p "Enter second Num: " b
read -p "Enter third Num: " c

w=$(( $a + $b * $c ))
x=$(( $a * $b + $c ))
y=$(( $c % $a / $b ))
z=$(( $a % $b + $c ))

echo $w
echo $x
echo $y
echo $z
