#!/bin/bash 

prime_1=1
echo "enter the range :"
read n
#echo "Primenumber betweeen 1 to $n is :"
#akarN= 'scale=3;sqrt(n)'
#echo -e "sqrt($n)" | bc


for((i=0; i<=$n;))
do
	prime_1[i]=1
done
prime_1[0]=prime_1[1]=0
akarN = "sqrt($n)" | bc
#printf $akarN
echo -e $akarN

for((i=2; i<=akarN;))
do
if $prime_1[i]; then
	for (j=i*i;j<=n; j=j+i)
		do 
			prime_1[j]=0
		done
break
fi
done

for((i=0; i<n;))
do
	if $prime_1[i]; then
	echo $i
	exit 1
	fi
done

