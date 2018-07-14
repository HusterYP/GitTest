#!/bin/sh

i=1
while(($i <= 5))
do
    echo "master value $i" >> file
    git add .
    git commit -m "master $i"
    let "i++"
done

i=1
git checkout -b dev
while(($i < 5))
do
    echo "dev value $i" >> file
    git add .
    git commit -m "dev $i"
    let "i++"
done

i=1
git checkout -b branch_1
while(($i < 5))
do
    echo "branch_1 value $i" >> file
    git add .
    git commit -m "branch_1 $i"
    let "i++"
done
