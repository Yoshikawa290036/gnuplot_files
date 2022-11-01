set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"
set terminal epslatex size 3.5,3 standalone color solid 9
set encoding utf8
set tics front
set border front
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

set format x '$%.1f$'
set format y '$%.1f$'
set format cb '$%.2f$'
unset key
set size ratio 1.


set lmargin at screen 0.00


set object 1 circle at  first 0 , first 0  size first 1.0 front lw 0 fc rgb "black" fill solid 1.0

set palette defined ( 0 '#000090',1 '#000fff',2 '#0090ff',3 '#0fffee',4 '#ffffff',5 '#ffee00',6 '#ff7000',7 '#ee0000',8 '#7f0000')

set view map
set pm3d
# set pm3d interpolate 3,3

sample = 100

set samples sample
set isosamples sample

range = 3.0
crange = 0.5

set xrange [-range:range]
set yrange [-range:range]
set cbrange [-crange:crange]

set xtics -range, range/2, range
set ytics -range, range/2, range
set cbtics -crange, crange/2, crange

set mxtics 2
set mytics 2
set mcbtics 5

set xlabel '{\Large $x$ [-]}'
set ylabel '{\Large $y$ [-]}'
set cblabel '{\Large $\phi$ [-]}'

f(x,y) = -(x)/(2.0*(x**2+y**2)**(1.5))

splot \
f(x,y) with pm3d



unset multiplot
reset
