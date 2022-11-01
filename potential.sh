#!/usr/bin/bash

# ./mk_img.sh  [fname]  [input directory]  [output directory]

fname=potential
indir=data
outdir=image

gnuplot -e "fname = '${fname}';indir = '${indir}'"  plt/${fname}.plt


platex ${fname}.tex
dvips ${fname}.dvi -o ${fname}.eps

convert -density 600 -units PixelsPerInch -alpha off ${fname}.eps ${fname}.png

rm ${fname}.aux
rm ${fname}.dvi
rm ${fname}.eps
rm ${fname}.log
rm ${fname}.tex
rm ${fname}-inc.eps

# convert ${fname}.png -trim ${fname}.png

mv ${fname}.png  ${outdir}/${fname}.png
