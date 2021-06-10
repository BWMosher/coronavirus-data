set terminal png linewidth 2 font "arial,28" size 2000,2000 background "#eeeeee"
set output 'all-weeks-plotted.png'
#CHANGE THIS TITLE
set title "NYC Covid Variant percentages from Feb 8 to May 23 \n Pandemic Response Lab Sequencing \n chart by BWMosher:  tinyurl.com/variants-nyc-sheet" font "arial,33"
set style data histogram
set style histogram rowstacked
set key invert reverse center bmargin maxcols 3 maxrows 5 Left font "arial,23"
set style fill solid border
#this smaller boxwidth needed to make the weeks separate when all are shown adjust higher as needed
set boxwidth .95
set yrange [0:1]
# increase max by one when theres a new week
set xrange [-0.5:14.5]
set xlabel "End date of week (Total number of sequenced tests)"
set ylabel "Percentage"
set xtics rotate by 37 right
set ytics out mirror
set mytics 
plot 'variant-epi-data.csv' \
using 19:xtic(2) t "Wild Type" lc rgb "#888888", \
'' using 4 t "B.1.1.7 (Alpha)" lc rgb "#e01a4f", \
'' using 5 t "B.1.351 (Beta)" lc rgb "#504884", \
'' using 6 t "B.1.429 (Epsilon)" lc rgb "#FE9000", \
'' using 7 t "B.1.427 (Epsilon)" lc rgb "#157f1f", \
'' using 8 t "P.1 (Gamma)" lc rgb "#f038ff", \
'' using 9 t "B.1.526 (Iota) E484K Pos" lc rgb "#058ed9", \
'' using 10 t "B.1.526 (Iota) E484K Neg" lc rgb "#0581C5", \
'' using 11 t "B.1.526.1" lc rgb "#035380", \
'' using 12 t "B.1.525 (Eta)" lc rgb "#023C40", \
'' using 13 t "B.1.617" lc rgb "#EAD94C", \
'' using 14 t "B.1.617.1 (Kappa)" lc rgb "#D5C545", \
'' using 15 t "B.1.617.2 (Delta)" lc rgb "#BFB23E", \
'' using 16 t "B.1.617.3" lc rgb "#AA9E37", \
'' using 17 t "P.2 (Zeta)" lc rgb "#9B581C"

# assembly: install gnuplot, have this file and the three .tsv files in the same folder, run "gnuplot stacked-plot.p", get png
