load "common-gnuplot"
set yrange [10:50000]
set xrange [0:10700]
set logscale y
set key horizontal
set key top left
set xlabel "temps (s)"
set ylabel "latence (ms) échelle log" 
set ytics ("10ms" 10, "100ms" 100, "1s" 1000, "10s" 10000)
plot \
	"AverageVelocityWindow" w steps ls 4 ti "G1", \
	"AverageVelocityPane3" w steps ls 3 ti "G2", \
	"AverageVelocityComposite" w steps ls 1 ti "G3", \
	"AverageVelocityPane1" w steps ls 2 ti "G4"
