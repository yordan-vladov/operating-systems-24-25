echo "front" | sed 's/front/back/'
cat bells.txt | head | sed '1s/bells/spells/'
cat bells.txt | head | sed '3s/bells/spells/'

sed -n '1,5p' distros.txt
sed -n '/SUSE/p' distros.txt
sed -n '/SUSE/!p' distros.txt
