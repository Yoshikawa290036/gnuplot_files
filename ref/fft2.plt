set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"
set terminal epslatex size 6,2.8 standalone color solid 9

set encoding utf8

set tics front
set border front
set border lw 3
set size ratio 1

if (!exists("fname")) fname='test'

oname = sprintf("%s.tex", fname)
set output oname

out01 = sprintf("image/fft/fft_%s.eps",rec)
out02 = sprintf("image/fft/fft_%s.png",rec)
m1 = sprintf('data/fft/%s_mode1_out.csv',rec)
m2 = sprintf('data/fft/%s_mode2_out.csv',rec)
m3 = sprintf('data/fft/%s_mode3_out.csv',rec)
m4 = sprintf('data/fft/%s_mode4_out.csv',rec)
m5 = sprintf('data/fft/%s_mode5_out.csv',rec)

set datafile separator ','



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

set logscale x 10
set logscale y 10
set format x '$10^{%L}$'
set format y '$10^{%L}$'
#set cbrange[0:10]
set xtics 10
set ytics 100
#set cbtics 4
set mxtics 10
set mytics 5


set xlabel '{\Large $f$~$[1/S]$}'
set ylabel '{\Large $\widehat{a}^{(n)^2}$[-]}'


set key width 0.5 box opaque spacing 1.1 samplen 1 Left reverse
set key right top


set size ratio 0.4



set label 31 at graph 0.02,1.07 '(c)~$Re^* = 8$'

plot \
m1 u 3:($4*$4) w line ls 101 title 'mode1' ,\
m2 u 3:($4*$4) w line ls 102 title 'mode2' ,\
m3 u 3:($4*$4) w line ls 103 title 'mode3' ,\
m4 u 3:($4*$4) w line ls 104 title 'mode4' ,\
m5 u 3:($4*$4) w line ls 105 title 'mode5' ,\


unset multiplot
reset
