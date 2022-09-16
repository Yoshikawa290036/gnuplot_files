
set encoding utf8

set terminal postscript enhanced eps size 7.2,2.2 color


# ------------------------------ #

# infile='data/2_0REC/mode00_uvw_pod_0060000'
# outfile='tttt9'

# ------------------------------ #


inp = sprintf("%s.csv", infile)
out01 = sprintf("%s.eps", outfile)
out02 = sprintf("%s.png", outfile)
set output out01
set multiplot

unset grid
set border lw 3

#set terminal png
#set out "20210614test-3.png"
set size ratio 0.25
set datafile separator ","
set xrange [0:4]
set yrange [0:1]
set cbrange[0:0.15]

# set xlabel '{/Arial-Italic r} {[-]}'
#set ylabel '{/Symbol-Oblique m_l/m}_{l,0}{[-]}'
# set ylabel '{/Arial-Italic z} {[-]}'
# set cblabel '{/Arial angular momentum} {[-]}'
# set rmargin 10
# set lmargin 1
# set tmargin 1

#set zlabel 'eta'
#タイトル文字の設定
#set title "α_s(0)=0.50"
#タイトルのフォント設定
set title font"Arial,15"
set xlabel font "Arial,30"
set ylabel font "Arial,30"
set cblabel font "Arial,30"
#ticsはメモリ文字
set tics font "Arial,25"
#keyは凡例
set key font"Arial,15"
unset key
# ラベルの位置
# set xlabel offset 0,1
# set ylabel offset -3,-1
# set zlabel offset 0,1
# set cblabel offset 3,-1

set xtics 1
set ytics 0.5
set mxtics 5
set mytics 4
set cbtics 0.05

set xtics offset 0,0
set ytics offset 0,0

set palette defined (0 '#ffffff', 1 '#00008b', 2 '#2ca9e1', 3 '#008000', 4 '#c8c800', 5 '#ff0000', 6 '#ff00ff')

set view map
set pm3d
set pm3d interpolate 10, 10

adj = 2.0

plot inp every 25:25:3 using ($1/64):(($2-0.111111)/64):($4*adj):($5*adj):(sqrt($4*$4+$5*$5)) with vectors linecolor palette linewidth 3 title ""



aaa = sprintf('convert -density 600 -units PixelsPerInch -alpha off  %s %s', out01, out02)


system(aaa)

# system(out02)
