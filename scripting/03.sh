#!/bin/sh

i=1
echo "Enter file ex amount:"
read Input
echo "Amount of files to be made: $Input"

echo "Enter wanted operation, remove/create"
read Input2
echo "Selcted operation: $Input2"

Input=$((Input + 1))

if [[ "$Input2" == "create" ]]
then
	while [ $i -lt $Input ]
		do
			while [ $i -lt 10 ]
				do
					echo "creating $i"
					touch 0$i
					i=$((i + 1))
				done
			while [ $i -lt $Input ]
				do
					echo "creating $i"
					touch $i
					i=$((i + 1))
				done
		done
else
	if [[ "$Input2" == "remove" ]]
	then
		while [ $i -lt $Input ]
			do
				while [ $i -lt 10 ]
					do
						echo "removing 0$i"
						rm 0$i
						i=$((i + 1))
					done
				while [ $i -lt $Input ]
					do
						echo "removing $i"
						rm $i
						i=$((i + 1))
					done
			done
	else
		echo "Error"
	fi
fi