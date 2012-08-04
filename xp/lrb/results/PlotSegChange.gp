load "common-gnuplot"
set yrange [0:400]
set xrange [0:10700]
set pointsize 0.5

set xlabel "temps (s)"
set ylabel "latence (ms)" 
set label "pour T=30n" at first 8000, first 280
set arrow from 7900,280 to 6600, 290
plot \
	"SegChangePartWinMedian" w steps ls 1 ti "[xway,vid/L]", \
	"SegChangeDSMedian" w steps ls 2 ti "D_S", \
	"SegChangeTWindowMedian" w steps ls 3 ti "[T 30s 30s[", \
	"SegChangeTWindow30s" w p ls 3 notitle

