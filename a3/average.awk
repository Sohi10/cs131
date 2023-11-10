BEGIN {
	FS=","
} 

{
       	locations[$8] += 1;
	locations_sum[$8] += $17;
} 

END {
	for (i in locations)
		print i,locations_sum[i]/locations[i]
}
