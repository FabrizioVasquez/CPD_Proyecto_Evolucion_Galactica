cd '/Users/fabriziovasquez/Downloads/CPD/proyecto/codigo/N-Body/Resultados'
set grid
set key left top
set xlabel "NP" font ",15"
set ylabel "Speed" font ",15"
set title "Speed(GFLOPS) vs Tiempo" font ",20"
plot "gflops_5120.txt" with linespoints, "gflops_8192.txt" with linespoints,"gflops_10240.txt" with linespoints,"gflops_16384.txt" with linespoints,"gflops_32768.txt" with linespoints,"gflops_65536.txt" with linespoints
