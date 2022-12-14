set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"
set terminal epslatex size 5,4 standalone color solid 9

set encoding utf8

set tics front
set border front
set border lw 3
set size ratio 1

if (!exists("fname")) fname='test'

oname = sprintf("%s.tex", fname)
set output oname


infile1=sprintf("data/%s/mode01_pod_%07d.csv",rec,tstep)
infile2=sprintf("data/%s/mode02_pod_%07d.csv",rec,tstep)
infile3=sprintf("data/%s/mode03_pod_%07d.csv",rec,tstep)
infile4=sprintf("data/%s/mode04_pod_%07d.csv",rec,tstep)
infile5=sprintf("data/%s/mode05_pod_%07d.csv",rec,tstep)
infile6=sprintf("data/%s/mode06_pod_%07d.csv",rec,tstep)

PM3D=sprintf("data/6_0REC/uvwpm3d%07d.csv2",tstep)


original=sprintf("data/%s/uvw%07d.csv2",rec,tstep)
recnst=sprintf("data/%s/recnst_pod_%07d.csv",rec,tstep)
residu=sprintf("data/%s/residu_pod_%07d.csv",rec,tstep)


set datafile separator ','

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

set format '$%g$'

set size ratio 1.5
set style fill solid 10

set palette rgbformulae 22,13,-31
set view map
set pm3d

adj = 2.0
ev = 25

set lmargin screen 0.12
set rmargin screen 0.82

set tmargin screen 0.95
set bmargin screen 0.65


set key width 0.5 box opaque spacing 1.1 samplen 1 Left reverse
set key right bottom
unset key

set label 31 at graph 0.02,1.12 '(a)~Original' front


set size ratio 0.25
set xrange [0:4]
set yrange [0:1]
set cbrange[0:inner]


set format x '$$'
set format cb '$%.2f$'
set cblabel '{\Large $ru_\theta$}' offset 1

set format y '$%.1f$'
set ylabel '{\Large $r-r_i$ [-]}'
set ytics 0.5 offset 0.5,0
set xtics 1

set cbtics 0.05

splot \
PM3D using ($1):($2 - inner):($6*$2) with pm3d title '' ,\
original every ev:ev:3 using ($1):(($2-0.111111)):($1-$1):($4*adj):($5*adj):($1-$1):(sqrt($4*$4+$5*$5)) with vectors linecolor "black" linewidth 3 title ""


set label 31 at graph 0.02,1.12 '(b)~Reconstructed' front

set tmargin screen 0.65
set bmargin screen 0.35


splot \
PM3D using ($1):($2 - inner):($6*$2) with pm3d title '' ,\
recnst every ev:ev:3 using ($1/64):(($2-0.111111)/64):($1-$1):($4*adj):($5*adj):($1-$1):(sqrt($4*$4+$5*$5)) with vectors linecolor "black" linewidth 3 title ""




set label 31 at graph 0.02,1.12 '(c)~Residual' front

set tmargin screen 0.35
set bmargin screen 0.05

set xlabel '{\Large $x$ [-]}' offset 0,0
set format x '$%.1f$'

splot \
PM3D using ($1):($2 - inner):($6*$2) with pm3d title '' ,\
residu every ev:ev:3 using ($1/64):(($2-0.111111)/64):($1-$1):($4*adj):($5*adj):($1-$1):(sqrt($4*$4+$5*$5)) with vectors linecolor "black" linewidth 3 title ""


#################################################################################


unset multiplot
reset
