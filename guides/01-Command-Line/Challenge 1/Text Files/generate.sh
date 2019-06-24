#!/bin/sh
 
getRandom() 
{ 
   echo $(($1 + RANDOM % $2)) 
}

for i in `seq 1 $(getRandom 2000 4000)`; do
   filename="xaaaa$(echo $i | tr '[0-9]' '[a-j]')"
  if (($i <= 600)) 
  then
   random=$(getRandom 1 39)
   if (( $random % 2 ))
   then
      filename="$filename.txt"
      sed -n "$(($random))p" "./More Text.txt" > $filename
   fi
  else
  touch $filename
  fi
  echo $filename
   done

