#!/usr/bin/bash

dire=data
fname=xyc
gnuplot -e "dire = '${dire}'; fname = '${fname}'"  plt/${fname}.plt


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

# mv ${fname}.eps  image/${fname}.eps
mv ${fname}.png  image/${fname}.png
