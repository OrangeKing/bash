if [ $# -ne 1 ]
then
	echo "Wrong number of arguments"
	exit 1
fi

grep -hoE "[a-zA-Z]+\s*" $1 -r | sort | uniq -c | sort -nr