#!bin/bash/

awk -f p.awk 2020coviddata.csv > total_deaths.csv
sort -t, -k2nr total_deaths.csv > top_three.dat

gnuplot plot.gp
