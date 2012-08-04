BEGIN {tmp = $1; min=$2; max=$2;}
{
	if(tmp == $1) {
		a[i++]=$2;
		min=(min <= $2) ? min : $2;
		max=(max >= $2) ? max : $2;
	} else {
		x=int((i+1)/2);
		if (x < (i+1)/2) med= (a[x-1]+a[x])/2; else med=a[x-1];
		x=int((i+1)*9/10);
		if (x < (i+1)/2) med= (a[x-1]+a[x])/2; else med=a[x-1];
		print tmp, med, min, max;
		i=0; tmp=$1;min=$2;max=$2;
	}
}
END {
		x=int((i+1)/2);
		if (x < (i+1)/2) med= (a[x-1]+a[x])/2; else med=a[x-1];
		x=int((i+1)*9/10);
		if (x < (i+1)/2) max= (a[x-1]+a[x])/2; else max=a[x-1];
		print tmp, med,min,max;
}
