load "common-gnuplot"
set yrange [0:400]
set xrange [0:10700]
set pointsize 0.5

set xlabel "temps (s)"
set ylabel "latence (ms)" 
set label "pour T multiple de 30" at first 5900, first 250
set label "pour T non multiple de 30" at first 5000, first 80
set arrow from 7900,260 to 6600, 290
set arrow from 7000,70 to 8100, 45
plot \
	"SegChangePartWinMedian" w steps ls 1 ti "Q1", \
	"SegChangeDSMedian" w steps ls 2 ti "Q2", \
	"SegChangeTWindowMedian" w steps ls 3 ti "Q3", \
	"SegChangeTWindow30s" w p ls 3 notitle

