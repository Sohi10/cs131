BEGIN{
	FS=","
	OFS=","}
{	
	county = $2
	deaths = $6
	total_deaths[county]= deaths	
}
END{
	for(i in total_deaths){
		print i,total_deaths[i] 
	}
}
