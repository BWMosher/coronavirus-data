set terminal png linewidth 2 font "arial,28" size 2000,2000 background "#eeeeee"
set output '2021-08-12.png'
set title "SARS-COV2 Variant percentages from weeks ending May 1 to Dec 4 \n NYC Pandemic Response Lab Sequencing, Updated Dec 16 \n chart by BWMosher: https://tinyurl.com/mosher-github" font "arial,33"
set style data histogram
set style histogram rowstacked
set key invert reverse center bmargin maxcols 2 maxrows 6 Left font "arial"
set style fill solid border
#this smaller boxwidth needed to make the weeks separate when all are shown adjust higher as needed
set boxwidth .90
set yrange [0:100]
# increase max by one when theres a new week
set xrange [17.5:49.5]
# set xlabel "End date of week (Total number of sequenced tests)" offset 0,0
set xlabel "End date of week (Total number sequenced)" offset 0,1.5
set ylabel "Percentage"
set xtics rotate by 90 right
set ytics out mirror
set datafile separator ","
set mytics 
plot '../../history/2021-08-12-readable.csv' \
using 7:xtic(1) t "B.1.1.7 (Alpha)" lc rgb "#e01a4f", \
'' using 15 t "B.1.351 (Beta)" lc rgb "#504884", \
'' using 9 t "P.1 (Gamma)" lc rgb "#f038ff", \
'' using 17 t "B.1.617.2 (Delta)" lc rgb "#BFB23E", \
'../../history/zeroes.csv' using 2  t "B.1.1.529 (Omicron)" lc rgb "#FF760D", \
'../../history/2021-08-12-readable.csv' using 11 t "B.1.429 (Epsilon)" lc rgb "#157f1f", \
'' using 13 t "B.1.427 (Epsilon)" lc rgb "#157f1f", \
'' using 3 t "B.1.526 (Iota) E484K Pos" lc rgb "#058ed9", \
'' using 5 t "B.1.526 (Iota) E484K Neg" lc rgb "#0581C5", \
'' using 19  t "B.1.621 (Mu)" lc rgb "#9B581C", \
'' using 21 t "Other" lc rgb "#888888"

# spares
# '' using - t "B.1.526.1" lc rgb "#035380", \
# '' using - t "B.1.525 (Eta)" lc rgb "#023C40", \
# '' using - t "B.1.617" lc rgb "#EAD94C", \
# '' using - t "B.1.617.1 (Kappa)" lc rgb "#D5C545", \
# '' using - t "B.1.617.3" lc rgb "#AA9E37", \
# '' using - t "P.2 (Zeta)" lc rgb "#9B581C", \

# columns from csv
# "Sequence week":1
# "B.1.526 +E484K  percent":3
# "B.1.526 no E484K percent":5
# "B.1.1.7 percent":7
# "P.1 percent":9
# "B.1.427 percent":11
# "B.1.429 percent":13
# "B.1.351 percent":15
# "B.1.617.2 percent":17
# "Other percent":19
# "incomplete":20
