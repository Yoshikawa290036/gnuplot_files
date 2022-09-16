set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"
set terminal epslatex size 6,8 standalone color solid 9

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

# out01 = sprintf("image/fft/fft_%s.eps",rec)
# out02 = sprintf("image/fft/fft_%s.png",rec)
m1_4 = sprintf('data/fft/4_0REC_mode1_out.csv')
m2_4 = sprintf('data/fft/4_0REC_mode2_out.csv')
m3_4 = sprintf('data/fft/4_0REC_mode3_out.csv')
m4_4 = sprintf('data/fft/4_0REC_mode4_out.csv')
m5_4 = sprintf('data/fft/4_0REC_mode5_out.csv')

m1_6 = sprintf('data/fft/6_0REC_mode1_out.csv')
m2_6 = sprintf('data/fft/6_0REC_mode2_out.csv')
m3_6 = sprintf('data/fft/6_0REC_mode3_out.csv')
m4_6 = sprintf('data/fft/6_0REC_mode4_out.csv')
m5_6 = sprintf('data/fft/6_0REC_mode5_out.csv')

m1_8 = sprintf('data/fft/8_0REC_mode1_out.csv')
m2_8 = sprintf('data/fft/8_0REC_mode2_out.csv')
m3_8 = sprintf('data/fft/8_0REC_mode3_out.csv')
m4_8 = sprintf('data/fft/8_0REC_mode4_out.csv')
m5_8 = sprintf('data/fft/8_0REC_mode5_out.csv')



set datafile separator ','




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



set format '$%g$'

set size ratio 0.4

####################################################################################################

set lmargin screen 0.12
set rmargin screen 0.99

set tmargin screen 0.98
set bmargin screen 0.68

####################################################################################################

set key width 0.5 box opaque spacing 1.1 samplen 1 Left reverse
set key right top



####################################################################################################

set label 31 at graph 0.02,1.08 '(a)~$Re^* = 4$' front

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

# set xlabel '{\Large $f$~$[1/S]$}'
set ylabel '{\Large $\widehat{a}^{(n)^2}$[-]}'


plot \
m1_4 u 3:($4*$4) w line ls 101 title 'mode1' ,\
m2_4 u 3:($4*$4) w line ls 102 title 'mode2' ,\
m3_4 u 3:($4*$4) w line ls 103 title 'mode3' ,\
m4_4 u 3:($4*$4) w line ls 104 title 'mode4' ,\
m5_4 u 3:($4*$4) w line ls 105 title 'mode5' ,\
# infile4 using :6:1 with lines ls 106 title '\Large mode $6$' ,\

#################################################################################

set label 31 at graph 0.02,1.08 '(b)~$Re^* = 6$' front

# set yrange [-8:8]
set tmargin screen 0.67
set bmargin screen 0.37


plot \
m1_6 u 3:($4*$4) w line ls 101 title 'mode1' ,\
m2_6 u 3:($4*$4) w line ls 102 title 'mode2' ,\
m3_6 u 3:($4*$4) w line ls 103 title 'mode3' ,\
m4_6 u 3:($4*$4) w line ls 104 title 'mode4' ,\
m5_6 u 3:($4*$4) w line ls 105 title 'mode5' ,\
# infile6 using :6:1 with lines ls 106 title '\Large mode $6$' ,\


#################################################################################


set label 31 at graph 0.02,1.08 '(c)~$Re^* = 8$' front

set tmargin screen 0.36
set bmargin screen 0.06


set xlabel '{\Large $f$~$[1/S]$}'

# set key width 0 box opaque spacing 1.1 samplen 0.7 Left reverse
# set key outside

plot \
m1_8 u 3:($4*$4) w line ls 101 title 'mode1' ,\
m2_8 u 3:($4*$4) w line ls 102 title 'mode2' ,\
m3_8 u 3:($4*$4) w line ls 103 title 'mode3' ,\
m4_8 u 3:($4*$4) w line ls 104 title 'mode4' ,\
m5_8 u 3:($4*$4) w line ls 105 title 'mode5' ,\
# infile8 using :6:1 with lines ls 106 title '\Large mode $6$' ,\


#################################################################################


unset multiplot
reset
