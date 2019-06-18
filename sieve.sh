read -p 'Input n ' sieve
limit=$1
sieve="$(seq 2 $limit | sort)"

for n in 2 $(seq 3 2 $limit)
do
  sieve="$(comm -23 <(echo "$sieve") <(seq $(($n * $n)) $n $limit|sort))"
  ok="$(echo "$sieve" | sort -n)"
done

#echo "$sieve"| sort -n
echo "$ok"
