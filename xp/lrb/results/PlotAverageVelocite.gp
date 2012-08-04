load "common-gnuplot"
set yrange [10:50000]
set xrange [0:10700]
set logscale y
set key horizontal
set key top left
set xlabel "temps (s)"
set ylabel "latence (ms)" 
set ytics ("10ms" 10, "100ms" 100, "1s" 1000, "10s" 10000)
plot \
	"AverageVelocityWindowDumb" w steps ls 4 ti "Fenêtre", \
	"AverageVelocityPane3" w steps ls 3 ti "Pane 2 Agg", \
	"AverageVelocityComposite" w steps ls 1 ti "Pane Complexe", \
	"AverageVelocityPane1" w steps ls 2 ti "Pane Seul"