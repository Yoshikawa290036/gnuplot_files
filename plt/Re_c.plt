set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"

set terminal epslatex size 3,2.9 standalone color solid 9

set encoding utf8
# set datafile separator ','

#set view map

set tics front
set border front
set border lw 3
set size ratio 1


if (!exists("fname")) fname='test'
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

set size ratio 1
# set style fill solid 0.5
set key invert

# set lmargin screen 0.12
set rmargin screen 0.98

set key width -1.8 box opaque spacing 1.2 samplen 0.9 Left reverse
set key right bottom

set format x '$%g$'
set xlabel '{\Large $\eta$ [-]}' offset 0,0.4
set xrange [0:1]
set xtics 0.5 offset 0,0
set mxtics 4

set ylabel '{\Large $Re_c$ [-]}' offset 0,0
set format y '$%g$'
set yrange [0:150]
set ytics 50 offset 0,0
set mytics 2

f1(x) = 10.81294/x + 41.45023/sqrt(1-x)-11.67578


f2(x) = (1/(0.1556*0.1556))*(1+x)**2/(2*x*sqrt((1-x)*(3+x)))

plot \
f2(x) title 'Esser and Grossmann' w l ls 105 lw 6,\
f1(x) title 'Dutcher and Muller' w l lc "black" lw 6,\
'data/Re_c.tsv' using 1:2 with p ls 101 pt 6 ps 3 lw 6 title 'Numerical'

unset multiplot
reset
