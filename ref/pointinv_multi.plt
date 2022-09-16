set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"
set terminal epslatex size 6,5.1 standalone color solid 9

set encoding utf8

set tics front
set border front
set border lw 3
set size ratio 1

if (!exists("fname")) fname='test'

oname = sprintf("%s.tex", fname)
set output oname

# rec = "04REC"
# tstep = 70000

infile4 = sprintf("data/pointinv/4_0REC.csv")
infile6 = sprintf("data/pointinv/6_0REC.csv")
infile8 = sprintf("data/pointinv/8_0REC.csv")




set datafile separator ','



lx = 40.0
ly = 200.0

set multiplot

inner =0.11111111111111112



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


set palette rgbformulae 22,13,-31


# set palette defined (0 '#ffffff', 1 '#00008b', 2 '#2ca9e1', 3 '#008000', 4 '#c8c800', 5 '#ff0000', 6 '#ff00ff')


set format '$%g$'

set size ratio 0.25
# set style fill solid 10

# set palette rgbformulae 22,13,-31
# set view map
# set pm3d
# set pm3d interpolate 3,3

# set palette defined (0 '#ffffff', 1 '#00008b', 2 '#2ca9e1', 3 '#008000', 4 '#c8c800', 5 '#ff0000', 6 '#ff00ff')


adj = 2.0
ev = 25

####################################################################################################

set lmargin screen 0.12
set rmargin screen 0.82

set tmargin screen 0.98
set bmargin screen 0.68

####################################################################################################

# set key width 0.5 box opaque spacing 1.1 samplen 1 Left reverse
# set key outside
unset key



####################################################################################################

set label 31 at graph 0.02,1.12 '(a)~$Re^* = 4$における時間係数の時間変化' front


set size ratio 0.3
set xrange [1:1002]
set yrange [-6:6]

set xtics 200
set ytics 3
# set cbtics 0.5

set mxtics 5
set mytics 5
# set mcbtics 4

set format x '$$'
# set xlabel '{\Large $t$ [s]}'

set format y '$%g$'
set ylabel '{\Large $a^{(n)}$ [-]}'



plot \
infile4 using :1:1 with lines ls 101 title '\Large mode $1$' ,\
infile4 using :2:1 with lines ls 102 title '\Large mode $2$' ,\
infile4 using :3:1 with lines ls 103 title '\Large mode $3$' ,\
infile4 using :4:1 with lines ls 104 title '\Large mode $4$' ,\
infile4 using :5:1 with lines ls 105 title '\Large mode $5$' ,\
# infile4 using :6:1 with lines ls 106 title '\Large mode $6$' ,\

#################################################################################

set label 31 at graph 0.02,1.12 '(b)~$Re^* = 6$における時間係数の時間変化' front

# set yrange [-8:8]
set tmargin screen 0.67
set bmargin screen 0.37


plot \
infile6 using :1:1 with lines ls 101 title '\Large mode $1$' ,\
infile6 using :2:1 with lines ls 102 title '\Large mode $2$' ,\
infile6 using :3:1 with lines ls 103 title '\Large mode $3$' ,\
infile6 using :4:1 with lines ls 104 title '\Large mode $4$' ,\
infile6 using :5:1 with lines ls 105 title '\Large mode $5$' ,\
# infile6 using :6:1 with lines ls 106 title '\Large mode $6$' ,\


#################################################################################


set label 31 at graph 0.02,1.12 '(c)~$Re^* = 8$における時間係数の時間変化' front

set tmargin screen 0.36
set bmargin screen 0.06


set xlabel '{\Large $t$ [-]}'

set key width 0 box opaque spacing 1.1 samplen 0.7 Left reverse
set key outside

plot \
infile8 using :1:1 with lines ls 101 title '\Large mode $1$' ,\
infile8 using :2:1 with lines ls 102 title '\Large mode $2$' ,\
infile8 using :3:1 with lines ls 103 title '\Large mode $3$' ,\
infile8 using :4:1 with lines ls 104 title '\Large mode $4$' ,\
infile8 using :5:1 with lines ls 105 title '\Large mode $5$' ,\
# infile8 using :6:1 with lines ls 106 title '\Large mode $6$' ,\


#################################################################################


unset multiplot
reset
