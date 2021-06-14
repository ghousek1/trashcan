# !/bin/bash

# To perform file operations
echo "Enter Choice :"
echo "1. Read File"
echo "2. write to the file from console"
read option

readFile(){
    file='calcHistory.txt'  
  
i=1  
while read line; do  
  
#Reading each line  
echo "> $i : $line"  
i=$((i+1))  
done < $file  

}


case $option in
1)
echo "reading....."
readFile()
;;
2) writeToFile()
;;
esac

