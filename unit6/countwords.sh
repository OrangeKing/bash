awk -F ';' 'BEGIN {sum=0} {for (i=1; i<=NF; i++) a[i]+=$i }{print $0} END {{print "----------------"}for (i in a) { printf "%d;",a[i] }; {printf "\b\n"} }' almostlikecsv

awk -v n=10 '{for (i=1;i<=NF;i++) if (length($i) > n) print $i}' test.txt | wc -l

awk -F ' ' 'BEGIN {sum=0} {for (i=1; i<=NF; i++) if (i == NR) sum+=$i }{print $0} END {print sum}' matrix
