#!/bin/bash
echo "Please input execute number of times:"
read number
echo "number is $number."

for (( i = 1; i < $number + 1; i++ )); do
  #something command
  echo "$i th"
  ./GAtest0619 $i > ./TIME/"time$i.csv"
done
echo "Finish!!"
