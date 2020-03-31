#!/bin/bash -x

read -p "Enter first Num: " x
read -p "Enter second Num: " y

z=$ (( $x + $y ))
echo $z
