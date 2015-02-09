#/bin/bash
# comprova tots els fitxers d'un directori que se li passa com a paràmetre
# Sanity checks

if  [ $# -gt 1 ]
then
	echo "Introdueix un directori: $ comprovadir.sh [nom directori]"
	exit 1
elif  [ $# -eq 1 ]
then
	if [ ! -d $1 ]
	then 
	echo "$1 no és un directori"
	exit 2
	fi
fi

ls -1 $1 > temp.txt
while read v
do 	
	if [ -f "$1$v" ]
	then 
		echo "$1$v és un fitxer regular"
	elif [ -d "$1$v" ]
		then
		echo "$1$v és un directori"
	else 
		echo "No sé què és $1$v"
	fi
done < temp.txt
rm temp.txt

exit 0
