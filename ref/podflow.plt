# ------------------------- #

# file = 'energy'

# ------------------------- #

# infile = sprintf('datas/%s/energy.csv',dirname)
# out01 = sprintf('%s.tex', dirname)
# out02 = sprintf('%s.png', dirname)

infile4="eta01/data/0400/uvwp0070000"
# infile8="eta01/data/0800/uvwp0070000"




out01 = sprintf('%s.tex', fname)
out02 = sprintf('%s.png', fname)
inner=1



set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"

set terminal epslatex size 3.7,1.355 standalone color solid 9


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
# set datafile separator ","
set xrange [0:4]
set yrange [0:1]
set cbrange[0:inner]

set xtics 1
set ytics 0.5
set cbtics 0.5

set mxtics 5
set mytics 5
set mcbtics 4

set format x '$%g$'
set xlabel '{\Large $x$ [-]}'

set format y '$%g$'
set ylabel '{\Large $r-r_i$ [-]}'

set cblabel '{\Large $ru_\theta $[-]}'

# set palette defined (0 '#ffffff', 1 '#00008b', 2 '#2ca9e1', 3 '#008000', 4 '#c8c800', 5 '#ff0000', 6 '#ff00ff')



set view map
set pm3d
set palette rgbformulae 22,13,-31

# set key width -2 box opaque spacing 1.1 samplen 1 Left reverse
# set key right top

####################################################################################################

adj = 1.5

# set label 1 at graph 0,1.1 "aiueo" font "Times-Roman, 24"


splot infile4 using ($1):($2 - inner):($2*$5) with pm3d title "",\
infile4 using ($1):($2 - inner):($1-$1):($3*1.0):($4*1.0):($1-$1):(sqrt($3*$3+$4*$4)) every 8:8 with vector linecolor 'black' linewidth 2.4 title ""


unset multiplot
reset

# aaa = sprintf("convert2 -alpha off -density 600 %s %s", out01, out02)

# system(aaa)
