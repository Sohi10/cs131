BEGIN{FS=","}
{	
	NR>1;
	pickup=$8;
	dropoff=$9;
	amount=$17;
	key=pickup "," dropoff;
	total[key]+=amount;
	count[key]+=1;
}
END {
	for(pair in total){
		print pair, total[pair]/count[pair]
	}
}

