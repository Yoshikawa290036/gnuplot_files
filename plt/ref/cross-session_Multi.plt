set terminal epslatex standalone header \
" \
\\usepackage{amssymb, amsmath, bm}\n\
\\usepackage{siunitx}\n \
"
set terminal epslatex size 9.2,5.3 standalone color solid 9

set encoding utf8

set tics front
set border front
set border lw 3
set size ratio 1

if (!exists("fname")) fname='test'

oname = sprintf("%s.tex", fname)
set output oname

infile2 = "data/2_0REC/cross_uvw.csv"
infile4 = "data/4_0REC/cross_uvw.csv"
infile6 = "data/6_0REC/cross_uvw.csv"

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


set palette rgbformulae 22,13,-31
set palette defined ( 0 '#000090',1 '#000fff',2 '#0090ff',3 '#0fffee',4 '#ffffff',5 '#ffee00',6 '#ff7000',7 '#ee0000',8 '#7f0000')

# set palette defined (0 '#ffffff', 1 '#00008b', 2 '#2ca9e1', 3 '#008000', 4 '#c8c800', 5 '#ff0000', 6 '#ff00ff')


set format '$%g$'

set size ratio 0.25
set style fill solid 10

# set palette rgbformulae 22,0,-31
set view map
set pm3d

# set pm3d interpolate 1,1
# set pm3d interpolate 10, 10

# set palette defined (0 '#ffffff', 1 '#00008b', 2 '#2ca9e1', 3 '#008000', 4 '#c8c800', 5 '#ff0000', 6 '#ff00ff')

lmar=0.05
rmar=0.1

## ======================================================================== ##
cbr=0.1
set xrange [65000:80000]
set yrange [0:4]
set cbrange[-cbr:cbr]


set ytics 1 offset 1
set cbtics 0.1


set size ratio 0.4
set tics front

set cblabel '{\Large $\dfrac{u}{u_\theta^{wall}}$ [-]}' offset 1

set format x '$$'
set format cb '$%.1f$'

set format y '$%g$'
set ylabel '{\Large $x$ [-]}' offset 0.1
## ======================================================================== ##


####################################################################################################

set lmargin screen lmar
set rmargin screen 0.5-rmar

set tmargin screen 1
set bmargin screen 0.01

set label 31 at graph 0.02,1.12 '(a-I)~$Re^* = 2$' front

set tmargin screen 0.95
set bmargin screen 0.65


splot \
infile2 using ($1):($2):($5) with pm3d title '' ,\

####################################################################################################

set label 31 at graph 0.02,1.12 '(a-I\hspace{-.1em}I)~$Re^* = 4$' front

set tmargin screen 0.65
set bmargin screen 0.35

splot \
infile4 using ($1):($2):($5) with pm3d title '' ,\

####################################################################################################

set label 31 at graph 0.02,1.12 '(a-I\hspace{-.1em}I\hspace{-.1em}I)~$Re^* = 6$' front

set tmargin screen 0.35
set bmargin screen 0.05

set xlabel '{\Large $t$ [-]}' offset 0,1

splot \
infile6 using ($1):($2):($5) with pm3d title '' ,\

####################################################################################################
####################################################################################################
####################################################################################################

## ======================================================================== ##
cbr=0.2
unset xlabel
# set xrange [70000:80000]
set yrange [0:4]
set cbrange[-cbr:cbr]

# set ytics 1 offset 1
set cbtics 0.1

set size ratio 0.4
set tics front

set cblabel '{\Large $\dfrac{v}{u_\theta^{wall}}$ [-]}' offset 1

set format x '$$'
set format cb '$%.1f$'

set format y '$%g$'
# set ylabel '{\Large $x$ [-]}' offset -1
unset ylabel
## ======================================================================== ##


####################################################################################################

set lmargin screen 0.49+lmar
set rmargin screen 0.99-rmar

set tmargin screen 1
set bmargin screen 0.01

set label 31 at graph 0.02,1.12 '(b-I)~$Re^* = 2$' front

set tmargin screen 0.95
set bmargin screen 0.65


splot \
infile2 using ($1):($2):($6) with pm3d title '' ,\

####################################################################################################

set label 31 at graph 0.02,1.12 '(b-I\hspace{-.1em}I)~$Re^* = 4$' front

set tmargin screen 0.65
set bmargin screen 0.35

splot \
infile4 using ($1):($2):($6) with pm3d title '' ,\

####################################################################################################

set label 31 at graph 0.02,1.12 '(b-I\hspace{-.1em}I\hspace{-.1em}I)~$Re^* = 6$' front

set tmargin screen 0.35
set bmargin screen 0.05

set xlabel '{\Large $t$ [-]}' offset 0,1

splot \
infile6 using ($1):($2):($6) with pm3d title '' ,\


####################################################################################################


unset multiplot
reset
