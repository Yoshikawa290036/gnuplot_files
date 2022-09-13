#!/usr/bin/bash

cd data/

function go() {
    i=$1
    j=$2
    cd Pe10e${i}_${j}/
    echo "Pe = 10e${i}.${j}"
    ../../20220808YOSHIKAWA_PRG01/a.out < inp > stdout
    cd ../
}


for ((i = 0; i <= 4; i++)); do
    j=0
    # for ((j = 0; j <= 9; j++)); do
        go ${i} ${j}
    # done
done
