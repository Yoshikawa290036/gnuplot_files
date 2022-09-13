#!/usr/bin/bash

# ./mk_img.sh  [fname]  [input directory]  [output directory]

fname=vel

gnuplot -e "fname = '${fname}'"  plt/vel.plt

platex ${fname}.tex
dvips ${fname}.dvi -o ${fname}.eps

convert -density 600 -units PixelsPerInch -alpha off ${fname}.eps ${fname}.png

rm ${fname}.aux
rm ${fname}.dvi
# rm ${fname}.eps
rm ${fname}.log
rm ${fname}.tex
rm ${fname}-inc.eps

# convert ${fname}.png -trim ${fname}.png

mv ${fname}.png  image/${fname}.png
mv ${fname}.eps  image/${fname}.eps
