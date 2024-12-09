
## Извеждане на процеси

ps
ps aux
top

## Филтриране на процеси

ps aux | grep firefox
ps -u $(whoami)
ps -u root --deselect

## Сортиране на процеси

ps aux --sort=%cpu | head
ps aux --sort=-vsz | head

## Персонализиране на изход

ps -efo pid,cmd,%cpu,%mem | head

## Спиране на процес

sleep 1000 # Press Ctrl + C to stop

## Пускане на процес във фонов режим

sleep 1000 &
sleep 2000 &
ps
fg %1 # Ctrl + Z
fg %2 # Ctrl + Z

## Паузиране на процес

sleep 1000 & # Press Ctrl + Z to pause

## Възобновяване на спрян процес

fg %1 # returns to foreground
bg %1 # returns to background

## Информация за нишки

ps -eLf

## Намиране на процеси чрез regex

pgrep ^x
kill $(pgrep ^x)
