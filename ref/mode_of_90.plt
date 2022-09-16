

infile1 = 'data/mode_of_90_up2.dat'
infile2 = 'data/mode_of_90_down2.dat'
tau_up = 'data/tau_wi01/fig_up.dat'
tau_down = 'data/tau_wi_bubrot4/fig_down.dat'


out01 = sprintf('%s.tex', fname)
out02 = sprintf('%s.png', fname)



set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"

set terminal epslatex size 3,2.25 standalone color solid 9

set encoding utf8

# set datafile separator ","

set tics front
set border front
set border lw 3

set size ratio 0.75

set output out01
# set format '$%g$'

set title ''


set style line 101 lt 1 lw 3 ps 2 lc rgb '#d62728' # red
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

set xrange[4:6]
set yrange[0:50]
# set y2range[1:1.4]
# set cbrange[0:0.15]
set xtics 2
set ytics 25
# set y2tics 0.2

# set cbtics 0.05
set mxtics 4
set mytics 6
set my2tics 6
set mcbtics 2

set format x '$%g$'
set xlabel '{\Large $Re^*$[-]}'

set format y '$%g$'
set ylabel '{\Large $N_{90}$}'
# set y2label '{\Large $T^*$ [-]}'

set palette defined (0 '#ffffff', 1 '#00008b', 2 '#2ca9e1', 3 '#008000', 4 '#c8c800', 5 '#ff0000', 6 '#ff00ff')

set key width 0.5 box opaque spacing 1.1 samplen 1.4 Left reverse
set key left top

step = 1



plot \
infile1  every step using 1:2 axis x1y1 with linespoints ls 104 pt 6 title "up",\
infile2  every step using 1:2 axis x1y1 with linespoints ls 105 pt 6 title "down",\

unset multiplot
reset
