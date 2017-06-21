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

grep -ro "TODO" $1 | wc -l

grep -r "^\s*$" $1 | wc -l

grep -rv "^\s*$" $1 | wc -l

grep -r "\b;$" $1 | wc -l

grep -rE "\{$|\}$" $1 | wc -l

grep -rv "[a-zA-Z]" $1 | wc -l

grep -rE "\({2}.*\){2}" $1 | wc -l

grep -Er "0x[a-f0-9]*" $1 | wc -l

grep -Er "\.[a-zA-Z0-9]{3}$" $1 | wc -l

grep -E "^struct\s" $1 -r | wc -l

grep -E "void\s*\(\)" $1 -r | wc -l

grep -E "void\s*[^ \(]+\(.+\)" $1 -r | wc -l

grep -E "[a-z.]+@[a-z]+\.[^\s]+" $1 -r | wc -l