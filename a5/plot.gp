set terminal pngcairo
set out 'most_affected.png'
set datafile separator ','
set style data histogram
set style histogram cluster
set boxwidth 0.8
set style fill solid 1.0 border lt -1
set ylabel "Deaths in 2020 "
set xlabel "Counties"
plot 'top_three.dat' using 2:xticlabels(1)  title "Three most affected counties by covid during 2020"
