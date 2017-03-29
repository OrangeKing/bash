if [ $# -ne 1 ]
then
	echo "Wrong number of arguments"
	exit 1
fi

if [ ! -d $1 ]
then
	echo "$1 is not a directory"
	exit 1

fi 

find $1 -type d | wc -l

find $1 -name "*.pl" -or -name "*.sh" | wc -l

find $1 -name "[a-zA-z][a-zA-z]" | wc -l

find $1 -type f -perm /111 | wc -l

find $1 -type f -perm 644 | wc -l

find $1 -name "*.c" -size +100k | wc -l

find $1 -name "[^b]*" | wc -l

find $1 -mtime +15 | wc -l

find $1 -path "*src*" | wc -l
