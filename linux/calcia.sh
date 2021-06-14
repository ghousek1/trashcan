# !/bin/bash
#create a text file calcHistory.txt

# Input type of operation
echo "Enter Choice :"
echo "0. View Calculator History"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Modulus"
echo "6. Power Of a on b (a^b)"
read option

powerUp()
{
  # value of A
  a=$1
  
  # value of B
  b=$2
  
  # c to count counter
  c=1
  
  # res to store the result
  local res=1
  
  #
  if((b==0));
  then
    res=1
  fi
  
  if((a==0));
  then
    res=0
  fi
  
  if((a >= 1 && b >= 1));
  then
    while((c <= b))
    do
      res=$((res * a))
      c=$((c + 1))
    done
  fi
  
  # Display the result
  #echo "$1 to the power $2 is $res"
  echo "$res"
}

viewCalcHistory(){
   file='calcHistory.txt'  
   i=1  
   while read line; do  
  
   #Reading each line  
   echo "-> $i : $line"  
   i=$((i+1))  
   done < $file 

}
# Take user Input
echo "Enter Two numbers : "
read a
read b

# calulator operations
case $option in
0) viewCalcHistory
;;

1)res=`echo $a + $b | bc`
 echo "Addition: $a + $b = $res">>calcHistory.txt
;;

2)res=`echo $a - $b | bc`
 echo "substraction: $a - $b = $res">>calcHistory.txt
;;

3)res=`echo $a \* $b | bc`
  echo "multiplication: $a X $b = $res">>calcHistory.txt
;;

4)res=`echo "scale=2; $a / $b" | bc`
 echo "Division: $a / $b = $res">>calcHistory.txt
;;

5)res=`echo "scale=2; $a % $b" | bc`
 echo "Modulo: $a mod $b = $res">>calcHistory.txt
;;

6)res=$(powerUp $a $b)
 echo "PowerUp: $a ^ $b = $res">>calcHistory.txt
;;

*)echo "invalid option"
;;
esac


echo "Result : $res"
