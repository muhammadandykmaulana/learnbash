#!/bin/bash
read input for i in `seq 2 $input` ; do
    counter=0
    for j in `seq 2 $(( $i - 1 ))` ;
    do
        if [ $(( $i % $j )) -eq 0 ];
        then
            counter=$(( $counter + 1 ))
        fi
    done
        if [ $counter -eq 0 ];
        then
            echo "$i"
        fi done
