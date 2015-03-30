#!/bin/bash 
if [ $1 = "-f" ]; then
		./run -f $2 > testAutomationOurFile
		./rdesugar -f $2 > testAutomationRefFile
		comm -3 testAutomationOurFile testAutomationRefFile	
else
		FILES=$1/*

		for f in $FILES
		do
			echo "$f"
			./run -f $1 > testAutomationOurFile
		  ./rdesugar -f $1 > testAutomationRefFile
		  comm -3 testAutomationOurFile testAutomationRefFile	
		done
fi




