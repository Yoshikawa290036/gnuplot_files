# ------------------------- #

# file = 'energy'

# ------------------------- #


infile = sprintf("data/pointinv/%s.csv",rec)



out01 = sprintf('%s.tex', fname)
out02 = sprintf('%s.png', fname)
inner=1



set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"

set terminal epslatex size 3.7,1. standalone color solid 9


set encoding utf8

# set multiplot
set tics front
set border front
set border lw 3

set size ratio 0.25

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

set size ratio 0.25
set datafile separator ","
set xrange [1:2002]
yr=10
# set yrange [-yr:yr]
# set cbrange[0:inner]

set xtics 200
set ytics 5
# set cbtics 0.5

set mxtics 5
set mytics 5
# set mcbtics 4

set format x '$$'
set xlabel '{\Large $t$ [-]}'

set format y '$%g$'
set ylabel '{\Large $a^{(n)}$ [-]}'

unset key
set key outside

####################################################################################################

adj = 1.5

# set label 1 at graph 0,1.1 "aiueo" font "Times-Roman, 24"



plot \
infile using :1:1 with lines ls 101 title '\Large mode $1$' ,\
infile using :2:1 with lines ls 102 title '\Large mode $2$' ,\
infile using :3:1 with lines ls 103 title '\Large mode $3$' ,\
infile using :4:1 with lines ls 104 title '\Large mode $4$' ,\
infile using :5:1 with lines ls 105 title '\Large mode $5$' ,\
# infile using :6:1 with lines ls 106 title '\Large mode $6$' ,\


set key nobox

unset multiplot
reset

# aaa = sprintf("convert2 -alpha off -density 600 %s %s", out01, out02)

# system(aaa)
