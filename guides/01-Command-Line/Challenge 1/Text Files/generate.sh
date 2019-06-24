#!/bin/sh
 
getRandom() 
{ 
   echo $(($1 + RANDOM % $2)) 
}

for i in `seq 1 $(getRandom 2000 4000)`; do
  if (($i <= 600)) 
  then
   random=$(getRandom 1 39)
   if (( $random % 2 ))
   then
      sed -n "$(($random))p" "./More Text.txt" > "xaaaa$(echo $i | tr '[0-9]' '[a-j]').txt"
   fi
  else
  touch "xaaaa$(echo $i | tr '[0-9]' '[a-j]')"
  fi
   done

