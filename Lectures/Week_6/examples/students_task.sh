cat students.csv | tail -n +2 | cut -d, -f1-3 | sort -t, -k 3 -nr | head
cat students.csv | tail -n +2 | cut -d, -f1-3 | sort -t, -k 3 -n | head -n 1
cat students.csv | tail -n +2 | cut -d, -f5 | sort | uniq -c
cat students.csv | tail -n +2 | cut -d, -f5,6 | sort | uniq -c

cat students.csv | tail -n +2 | grep "^[^,]*,[^,]*,6"
cat students.csv | tail -n +2 | grep "^.*,.*,6"
