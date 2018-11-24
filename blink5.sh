#!/bin/bash

#This code should blink all four of your LEDs on and then off
#with 1 second of on time and 1 second of off time. It should do this five times.'

COUNTER=0
COUNTER2=0
$counter='0 1 2 3' #5 items for 5 times
#counter2='0123'
innerCounter=0

while [ $COUNTER -lt 5 ]
do
 #for counter in $counter
	while [ $innerCounter -lt 5 ]
	do
	echo $innerCounter
		gpio write $innerCounter 1; #here  1 is the value we set it to
	(( innerCounter++ ))
	done
	innerCounter=0

	sleep 1s; #wait 1 second
		
	#for counter2 in $counter2
	while [ $COUNTER2 -lt 5 ]
	do	
	echo $COUNTER2
		gpio write $COUNTER2 0; #here  0 is the value we set it to			
	(( COUNTER2++ ))
	done	
	COUNTER2=0;

	sleep 1s;			
	(( COUNTER++ ))
	echo blinking;
	
done
