if [ $# -ne 1 ]
then
	echo "Wrong number of arguments"
	exit 1
fi

#1
	awk '{print NR " " $0}' test.txt
#2
	awk 'NR>4 && NR<11 {print NR " " $0}' exampl.txt
#3
	awk '$0 ~ /[0-9]+/{print NR " " toupper($0)}' test.txt 
#4
	awk -F ' ' '$3 ~ /[0-9]+/{print NR " " toupper($0)}' test.txt 
#7
	#awk -F ' ' '$0 ~ /^.[^zZ]+$/{print NR " " toupper($0)}' test.txt
	#awk  '$0 ~ /^.[^zZ]+$/ {for (i=1;i<=NF;i++) toupper($i)}' test.txt
	awk  '$0 ~ /^.[^zZ]+$/ {for (i=1;i<=NF;i++) toupper($NR) print $0}' test.txt
	awk  '{for (i=1;i<=NF;i++) if ($NR~/^.[^zZ]+$/) toupper($NR) print $0}' test.txt

#8
	awk 'NR%2!=0 {print" line"NR ": " NF}' test.txt
#9
	awk -v n=10 '{for (i=1;i<=NF;i++) if (length($i) > n) print $i}' test.txt | wc -l