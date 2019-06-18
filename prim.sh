x=$1 i=1 while [ $i -le $x ]; do
 k=0
 for a in `seq 1 $i` ;
 do
  if [ $(( i%a )) -eq 0 ];
  then
   let "k=$k+1"
  fi
 done
 if [ $((k)) -eq 2 ];
 then
  echo $i
 fi
 let "i=$i+1"
done
