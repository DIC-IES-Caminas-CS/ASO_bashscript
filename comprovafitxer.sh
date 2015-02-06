#/bin/bash

# Comprova si existeix un fitxer i indica
# els permisos que sobre ell té l'usuari

# Comprove que introdueix un paràmetre:
if [ $# != 1 ] 
then
	echo "Introdueix el nom d'un fitxer:"
	echo '$ comprovafitxer.sh nom_de_fitxer'
	exit 1
fi

# Indique els permisos:
if [ -d $1 ]
then
echo "$1 és un directori"
else
if [ -f $1 ]
then 
	echo "$1 és un fitxer regular."
	if [ -r $1 ]
	then
		 echo "Tens permisos de lectura sobre $1."
	else
		echo "No tens permisos de lectura sobre $1."
	fi
	if [ -w $1 ]
	then
		 echo "Tens permisos d'escriptura sobre $1."
	else
		echo "No tens permisos d'escriptura sobre $1."
	fi
	if [ -x $1 ]
	then
		 echo "Tens permisos d'execució sobre $1."
	else
		echo "No tens permisos d'execució sobre $1."
	fi

fi
fi
