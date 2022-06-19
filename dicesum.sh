
#!/bin/bash

randomNumber1=$((RANDOM%7)) 
randomNumber2=$((RANDOM%7))
result=$(($randomNumber1 + $randomNumber2 ))
echo  $result
