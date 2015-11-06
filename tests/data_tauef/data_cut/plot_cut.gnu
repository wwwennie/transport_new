set term post eps enhanced color 24
set output "invtau_vs_cut.eps"
#set xrange [4:15]
#set yrange [0:14]
#set xtics 2
#set mxtics 2
#set ytics 2
#set mytics 2
set ylabel '{/Symbol t}^{-1} (eV)'
set xlabel 'cut'
#set arrow from 0,0.01 to 0,10000 nohead
set style line 1 lt 1 lc 1 lw 3
set style line 2 lt 1 lc 2 lw 3
set style line 3 lt 1 lc 3 lw 3
set style line 4 lt 2 lc 4 lw 3
set style line 5 lt 1 lc 5 lw 3
set style line 6 lt 2 lc 7 lw 3
#set pointsize 1.0
set key top left
plot "invtau_vs_cut.8.out" u 1:2 w lp ls 1 t 'kp=8',\
     "invtau_vs_cut.16.out" u 1:2 w lp ls 2 t 'kp=16',\
     "invtau_vs_cut.24.out" u 1:2 w lp ls 3 t 'kp=24',\
     "invtau_vs_cut.32.out" u 1:2 w lp ls 4 t 'kp=32'