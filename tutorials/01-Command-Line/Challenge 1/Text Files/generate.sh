#!/bin/bash

for i in `seq 1 4500`; do
  if (($i <= 600)) 
  then
            random=$((1 + RANDOM % 39))
            if (( $random % 2 ))
            then
               sed -n $((1 + RANDOM % 39))p ./More\ Text.txt > "xaaaa$(echo $i | tr '[0-9]' '[a-j]').txt" 
               touch "xaaaa$(echo $i | tr '[0-9]' '[a-j]')"
            else
               touch "xaaaa$(echo $i | tr '[0-9]' '[a-j]')"
            fi
  else
  touch "xaaaa$(echo $i | tr '[0-9]' '[a-j]')"
  fi
            done

