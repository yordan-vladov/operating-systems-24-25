cat /usr/share/dict/words | grep -E "^a.*e$"
cat /usr/share/dict/words | grep -E "^[a-z]{4}$"
cat /usr/share/dict/words | grep -E "^[a-z]{,6}$"
cat /usr/share/dict/words | tr -cd "a-z\n" | grep -E "^[a-z]{,6}$"
cat /usr/share/dict/words | grep -E "^[^aeouiAEOUI]*$"
cat /usr/share/dict/words | grep -E ".*[0-9].*[A-Z]$"
