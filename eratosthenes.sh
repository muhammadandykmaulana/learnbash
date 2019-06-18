#!/bin/bash 

prime_1=0
echo "enter the range :"
read n
echo "Primenumber betweeen 1 to $n is :"

for((int i=0; i<=n;))
do
	prime_1[i]=1
done
prime_1[0]=prime_1[1]=0;
akarN = sqrt(n)

for((int i=2; i<=akarN;))
do
if prime_1[i]; then
	for (j=i*i;j<=n; j=j+i)
		do 
			prime_1[j]=0;
		done
if
done

for((int i=0; i<n;))
do
	if prime_1[i]; then
	echo $i
	fi
done
		
