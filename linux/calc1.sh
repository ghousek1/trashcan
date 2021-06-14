#!/bin/bash
echo "simple calculator"

echo "enter first number"
read n1
echo "enter second number"
read n2

echo "1.Addition"
echo "2.Subtraction"
echo "3.Multiplication"
echo "4.Division"
echo "Enter choice"
read ch

case $ch in
1)sum= $n1 + $n2
echo "Addition is = $sum"
;;

2)sub=$n1 - $n2
echo "Sub is = $sub"
;;

3)mul=$n1 * $n2
echo "Mul is = $mul"
;;



*)echo "invalid choice"
esac

