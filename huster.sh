#!/bin/sh

i=1
git checkout dev
git checkout -b branch_2
while(($i < 5))
do
    echo "branch_2 value $i" >> file
    git add .
    git commit -m "branch_2 $i"
    let "i++"
done
