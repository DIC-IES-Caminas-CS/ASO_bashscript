#/bin/bash

# comprova tots els fitxers d'un directori que se li passa com a paràmetre
# Sanity checks

if (( $# > 1 ))
then
	echo "Introdueix un directori: $ comprovadir.sh [nom directori]"
	exit 1
elif (( $# == 1 ))
then
	if [ ! -d $1 ]
	then 
	echo "$1 no és un directori"
	exit 2
	fi
fi


for v in ` ls $1`
do 	
	if [ -f $1$v ]
	then 
		echo "$v és un fitxer regular"
	elif [ -d $1$v ]
		then
		echo "$v és un directori"
	else 
		echo "No sé què és $v"
	fi
done
