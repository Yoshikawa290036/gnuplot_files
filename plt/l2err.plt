set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"

set terminal epslatex size 3.3, 2.7 standalone color solid 9

set encoding utf8


set tics front
set border front
set border lw 3
set size ratio 1


# unset border
# unset key

if (!exists("fname")) fname='test'
# if (!exists("nn")) nn=0
oname = sprintf("%s.tex", fname)
set output oname


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

set palette defined (0 '#999999',\
					 1 '#00008b',\
					 2 '#2ca9e1',\
					 3 '#008000',\
					 4 '#c8c800',\
					 5 '#ff0000',\
					 6 '#1a1a1a') positive

set format '$%g$'

set size ratio 0.9
set style fill solid 0.5

set logscale xy



####################################################################################################

set lmargin screen 0.2
set rmargin screen 1

set tmargin screen 0.97
set bmargin screen 0.14

####################################################################################################

set key width 1 box opaque spacing 1.5 samplen 1 Left reverse
set key left bottom

# unset key
####################################################################################################

set format x ''
set xlabel '{$N_\theta$ [-]}' offset 0,0.4
set xrange [5:1800]
set nomxtics
# set xtics 200 offset 0,0
set noxtics
set xtics 1e-2,10,1
set xtics add("16" 16,"64" 64, "256" 256, "1024" 1024, "2048" 2048)


set ylabel '{\Large $||L_2||$ [-]}' offset -1.0,0
set format y  '$10^{%L}$'
# set yrange [0.0000001:0.1]
set ytics 1e-10,100,1 offset 0,0
set nomytics
# set mytics 4

f(x) = 10/(x*x)
f2(x)=0.1/x


plot \
"data/l2err.tsv" using ($2):($3) with p ls 101  pt  4  ps 1.5 lw  4 title '$N_r=512$ ',\
f(x) with line ls 102 lw 2 title '$\propto N_\theta^{-2}$'


unset multiplot
set nologscale
reset
