#!/usr/bin/bash

# ./mk_img.sh  [fname]  [input directory]  [output directory]

fname=xyuvp
indir=data
outdir=image

# gnuplot でmk_img.pltを読み込む前に　-e の後のコマンドが実行される
gnuplot -e "fname = '${fname}';indir = '${indir}'"  plt/${fname}.plt


platex ${fname}.tex
dvips ${fname}.dvi -o ${fname}.eps

# 作成されたepsファイルを imageMagickでpng画像に変換する
convert -density 600 -units PixelsPerInch -alpha off ${fname}.eps ${fname}.png

rm ${fname}.aux
rm ${fname}.dvi
rm ${fname}.eps
rm ${fname}.log
rm ${fname}.tex
rm ${fname}-inc.eps

# convert ${fname}.png -trim ${fname}.png

# ファイルを output directory に移動する
mv ${fname}.png  ${outdir}/${fname}.png
