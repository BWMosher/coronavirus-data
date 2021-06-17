set terminal png linewidth 2 font "arial,28" size 2000,2000 background "#eeeeee"
set output 'disregarded-variants-through-may23.png'
set title "Disregarded (June 10 change) NYC Covid Variant percentages from Feb 8 to May 23  \n Pandemic Response Lab Sequencing \n chart by BWMosher: tinyurl.com/mosher-github" font "arial,33"
set style data histogram
set style histogram rowstacked
set key invert reverse center bmargin maxcols 3 maxrows 5 Left font "arial,23"
set style fill solid border
#this smaller boxwidth needed to make the weeks separate when all are shown adjust higher as needed
set boxwidth .95
# set yrange [0:.25]
# increase max by one when theres a new week
set xrange [-0.5:14.5]
set xlabel "Date range of tests (Total number of sequenced tests)" offset 0,1.5
set ylabel "Percentage"
set xtics rotate by 37 right
set ytics out mirror
set mytics 
plot 'prl-data-before-june-10.tsv' \
using 11:xtic(2) t "B.1.526.1" lc rgb "#035380", \
'' using 12 t "B.1.525 (Eta)" lc rgb "#023C40", \
'' using 13 t "B.1.617" lc rgb "#EAD94C", \
'' using 14 t "B.1.617.1 (Kappa)" lc rgb "#D5C545", \
'' using 16 t "B.1.617.3" lc rgb "#AA9E37", \
'' using 17 t "P.2 (Zeta)" lc rgb "#9B581C"

