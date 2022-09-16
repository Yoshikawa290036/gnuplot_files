set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"
set terminal epslatex size 4, 3 standalone color solid 9

set encoding utf8
set datafile separator ','

set tics front
set border front
set border lw 3
set size ratio 1

if (!exists("fname")) fname='test'

oname = sprintf("%s.tex", fname)
set output oname

infile = sprintf('./data/4_0REC/mode01_pod_0070000.csv')

lx = 40.0
ly = 200.0

set multiplot


set style line 101 lt 1 lw 4 ps 2 lc rgb '#d62728' # red
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



set palette defined (0 '#ffffff', 1 '#00008b', 2 '#2ca9e1', 3 '#008000', 4 '#c8c800', 5 '#ff0000', 6 '#ff00ff')


set format '$%g$'

set size ratio 0.6
set style fill solid 10
adj = 1.5

####################################################################################################

set lmargin screen 0.2
set rmargin screen 0.8

set tmargin screen 1
set bmargin screen 0.67

####################################################################################################

set key width 0.5 box opaque spacing 1.1 samplen 1 Left reverse
set key right bottom
unset key

####################################################################################################

set label 31 at graph 0.01,1.2 '(a)' front


set size ratio 0.25
set datafile separator ","
set xrange [0:4]
set yrange [0:1]
set cbrange[0:0.15]

set format x '$$'
set format cb '$%.2f$'

set format y '$%g$'
set ylabel '{\Large $r-r_i$ [-]}'

set cbtics 0.05


plot infile every 25:25:3 using ($1/64):(($2-0.111111)/64):($4*adj):($5*adj):(sqrt($4*$4+$5*$5)) with vectors linecolor palette linewidth 3 title ""



set label 31 at graph 0.01,1.2 '(b)' front

set tmargin screen 0.66
set bmargin screen 0.38


plot infile every 25:25:3 using ($1/64):(($2-0.111111)/64):($4*adj):($5*adj):(sqrt($4*$4+$5*$5)) with vectors linecolor palette linewidth 3 title ""


set label 31 at graph 0.01,1.2 '(c)' front

set tmargin screen 0.32
set bmargin screen 0.1

set xlabel '{\Large $x$ [-]}'

plot infile every 25:25:3 using ($1/64):(($2-0.111111)/64):($4*adj):($5*adj):(sqrt($4*$4+$5*$5)) with vectors linecolor palette linewidth 3 title ""


unset multiplot
reset
