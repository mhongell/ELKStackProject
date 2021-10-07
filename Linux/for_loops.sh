#!/usr/bin/env bash

#My states variable
my_states=('Hawaii' 'Ohio' 'Alaska' 'Georgia' 'California')

#States for loop
for state in ${my_states[@]};
do
   if [ $state = 'Hawaii' ]
   then
      echo "Hawaii is the best"
   else
      echo "I'm not fond of Hawaii"
   fi
done

#Bonus
my_numbers=$(echo {0..9})
