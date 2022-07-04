cd '/Users/fabriziovasquez/Downloads/CPD/proyecto/codigo/N-Body/Resultados'
set grid
set key right top
set yrange [0:1.2]
set ytics 0.05
set xlabel "NP" font ",15"
set ylabel "Eficiencia" font ",15"
set title "Eficiencia vs NP" font ",20"
plot "eficiencia_5120.txt" with linespoints, "eficiencia_8192.txt" with linespoints,"eficiencia_10240.txt" with linespoints,"eficiencia_16384.txt" with linespoints,"eficiencia_32768.txt" with linespoints,"eficiencia_65536.txt" with linespoints
