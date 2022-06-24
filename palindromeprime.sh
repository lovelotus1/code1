#!/bin/bash
sum=0
reminder=0

function palindrome()
{
    number=$(($1))
    temp=$number
    while  [ $number -gt 0 ]
    do
       reminder=$(($number%10))
       sum=$((($sum*10)+$reminder))
       number=$(($number/10))
    done
    if [  $temp  -eq $sum  ]
     then
       echo "Palindrome"
     else
      echo "Noo"
    fi

}
palindrome 12

c. Check if the Palindrome number is also prime
Answe-
#!/bin/bash
echo "Enter a number:"
read number

sum=0
reminder=0
temp=$number
result=1

while [ $number -gt 0 ]
do
   reminder=$(($number%10))
   sum=$((($sum*10)+$reminder))
   number=$(($number/10))
done

if [ $temp -eq $sum ]
then
    echo "Integer Palindrome"
else
  echo "Not a palindrome"
fi

for(( counter=2; counter<$temp; counter++ ))
do
    if [ $(($temp%$counter))  -eq 0 ]
    then
    result=$(($result+1))
    fi
done

if [ $result -eq 1 ]
then
   echo "and prime number"
else
   echo "but Not a  prime number "
fi
