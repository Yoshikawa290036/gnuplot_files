#!/usr/bin/bash

# ./pe_sh.sh  [fname]  [input directory]  [output directory]

fname=Pe_Sh

output=image/pe_sh.png

gnuplot -e "fname = '${fname}'" plt/pe_sh.plt

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

mv ${fname}.png ${output}
