ping google.com > /tmp/google-log &
ping abv.bg > /tmp/abv-log &

ps -u $(whoami)
ps | grep ping
fg %1 # Ctrl - Z to pause
bg %1
