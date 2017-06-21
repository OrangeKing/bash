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

find $1 -type f | sed -e 's/.*\.//' | sort | uniq -c | sort -nr
