# ------------------------- #

# file = 'energy'

# ------------------------- #


ifile0="data/4_0REC/energy.csv"


ifile1="data/energy/5_1REC.csv"
ifile2="data/energy/5_2REC.csv"
ifile3="data/energy/5_3REC.csv"
ifile4="data/energy/5_4REC.csv"
ifile5="data/energy/5_5REC.csv"
ifile6="data/energy/5_6REC.csv"
ifile7="data/energy/5_7REC.csv"
ifile8="data/energy/5_8REC.csv"
ifile9="data/energy/5_9REC.csv"

out01 = sprintf('%s.tex', fname)
out02 = sprintf('%s.png', fname)



set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"

set terminal epslatex size 2.5,2.3 standalone color solid 9

set encoding utf8

set datafile separator ","

set tics front
set border front
set border lw 3

set size ratio 1

set output out01
# set format '$%g$'

set title ''


set style lines 101 lt 1 lw 4 ps 2 lc rgb '#d62728' # red
set style line 102 lt 1 lw 4 ps 2 lc rgb '#1f77b4' # blue
set style line 103 lt 1 lw 4 ps 2 lc rgb '#2ca02c' # green
set style line 104 lt 1 lw 4 ps 2 lc rgb '#ff7f0e' # orange
set style line 105 lt 1 lw 4 ps 2 lc rgb '#17becf' # light-blue
set style line 106 lt 1 lw 4 ps 2 lc rgb '#9467bd' # purple
set style line 107 lt 1 lw 4 ps 2 lc rgb '#bcbd22' # yellow
set style line 108 lt 1 lw 4 ps 2 lc rgb '#e377c2' # orchid
set style line 109 lt 1 lw 4 ps 2 lc rgb '#7f7f7f' # gray
set style line 110 lt 1 lw 4 ps 2 lc rgb '#8c564b' # brown

set style line 111 lt 1 lw 4 ps 2 lc rgb '#ff9896' # red
set style line 112 lt 1 lw 4 ps 2 lc rgb '#aec7e8' # blue
set style line 113 lt 1 lw 4 ps 2 lc rgb '#98df8a' # green
set style line 114 lt 1 lw 4 ps 2 lc rgb '#ffbb78' # orange
set style line 115 lt 1 lw 4 ps 2 lc rgb '#9edae5' # light-blue
set style line 116 lt 1 lw 4 ps 2 lc rgb '#c5b0d5' # purple
set style line 117 lt 1 lw 4 ps 2 lc rgb '#dbdb8d' # yellow
set style line 118 lt 1 lw 4 ps 2 lc rgb '#f7b6d2' # orchid
set style line 119 lt 1 lw 4 ps 2 lc rgb '#c7c7c7' # gray
set style line 120 lt 1 lw 4 ps 2 lc rgb '#c49c94' # brown

set xrange[1:10]
set yrange[0:1]
# set cbrange[0:0.15]
# set xtics 4
set ytics 0.25
# set cbtics 0.05
set mxtics 4
set mytics 5
set mcbtics 2

set format x '$10^{%L}$'
set logscale x
set xlabel '{\Large POD mode [-]}'

set format y '$%g$'
# set logscale y
set ylabel '{\Large ratio to total energy [-]}'

set palette defined (0 '#ffffff', 1 '#00008b', 2 '#2ca9e1', 3 '#008000', 4 '#c8c800', 5 '#ff0000', 6 '#ff00ff')

set key width -1 box opaque spacing 1.5 samplen 1.4 Left reverse
set key right bottom

####################################################################################################

adj = 1.5

# set label 1 at graph 0,1.1 "aiueo" font "Times-Roman, 24"
f9(x)=0.9

plot \
ifile0 using 1:5:2 with linespoints ls 102  pt 6  ps 0.8  title '',\
f9(x) with lines lc "black" lw 2 title ''




unset multiplot
reset

# aaa = sprintf("convert2 -alpha off -density 600 %s %s", out01, out02)

# system(aaa)
