#!/usr/bin/bash

# ./mk_img.sh  [fname]  [input directory]  [output directory]

fname=$1
indir=$2
outdir=$3
tmpfname=$4

gnuplot -e "fname = '${fname}'; indir = '${indir}'; tmpfname = '${tmpfname}'"  plt/velc.plt


platex ${tmpfname}.tex
dvips ${tmpfname}.dvi -o ${tmpfname}.eps

convert -density 600 -units PixelsPerInch -alpha off ${tmpfname}.eps ${tmpfname}.png

rm ${tmpfname}.aux
rm ${tmpfname}.dvi
rm ${tmpfname}.eps
rm ${tmpfname}.log
rm ${tmpfname}.tex
rm ${tmpfname}-inc.eps

# convert ${fname}.png -trim ${fname}.png

mv ${tmpfname}.png  ${outdir}/${fname}.png
