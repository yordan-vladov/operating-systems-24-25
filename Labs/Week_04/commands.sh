# head

head -n 10 employees.csv
head -n 20 employees.csv
head -n -5 employees.csv

# tail

tail -n 10 employees.csv
tail -n 5 employees.csv
tail -n +2 employees.csv

# Pipes

head -n 6 employees.csv | tail -n +2
head -n 21 employees.csv | tail -n +11

# sort

tail -n +2 employees.csv | sort -nr -t, -k1,1
tail -n +2 employees.csv | sort -t, -k2,2
tail -n +2 employees.csv | sort -t, -k4,4 -nr | head -n 5

# cut

cut -d, -f2 employees.csv
cut -d, -f2,4,5 employees.csv
cut -d, -f1-3 employees.csv

# uniq

tail -n +2 employees.csv | cut -d, -f3 | sort | uniq
tail -n +2 employees.csv | cut -d, -f3 | sort | uniq -c

# wc

tail -n +2 employees.csv | wc -l
tail -n +2 employees.csv | cut -d, -f3 | sort | uniq | wc -l

# combination

tail -n +2 employees.csv | cut -d, -f2,4,5 | sort -n -t, -k3,3 | head -n 10

# grep

cat employees.csv | grep Engineering
cat employees.csv | grep -E "Engineering|Finance"
cat employees.csv | grep -vE "Engineering|Finance"
cat employees.csv | grep -E ",[1-9][0-9]+$"

# sed

cat employees.csv | sed 's/Engineering/QA/g'
