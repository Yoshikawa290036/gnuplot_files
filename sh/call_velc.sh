#!/usr/bin/bash

function pe() {
    indir=$1
    outdir=$2
    tmpfname=$3
    for ((k = 1000000; k <= 9000000; k += 1000000)); do
        ks=$(printf %07d ${k})
        ./velc.sh xyc${ks} ${indir}   ${outdir}  xyc${ks}_${tmpfname}    > /dev/null
    done
}

# for ((j = 1; j <= 9; j++)); do
#     pe data/Pe_0_${j} image/Pe_0_${j}    Pe_${i}_${j} &
# done

# for ((i = 1; i <= 2; i++)); do
#     for ((j = 0; j <= 9; j++)); do
#         pe data/Pe_${i}_${j} image/Pe_${i}_${j}   Pe_${i}_${j}  &
#     done
# done



for ((i=0;i<=4;i++)); do
    pe data/Pe10e${i}_0  image/Pe10e${i}_0    Pe10e${i}_0 &
done
