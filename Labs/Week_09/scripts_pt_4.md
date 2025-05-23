# Shell Скриптове - Част 4

- В това упражнение ще продължим разработването на  shell скриптове.
### while цикли

- Базовият **while** има следната структура:

```bash
while [ condition ]
do
    # Commands to execute
done
```

- Чрез него ние можем да изпълняваме команди, докато дадено условие е вярно:

```bash
#!/bin/bash
count=1
while [ $count -le 5 ]
do
    echo "Count: $count"
    ((count++))
done
```
### until цикъл

- Разновидност на **while** цикълът е **until** цикълът:

```bash
until [ condition ]
do
    # Commands to execute
done
```

- За разлика от **while** цикълът **until** цикълът се върти, докато дадено условие е грешно:

```bash
#!/bin/bash
count=1
until [ $count -gt 5 ]
do
    echo "Count: $count"
    ((count++))
done
```

### break, continue

- Можем да ползваме тези ключови думи в нашите цикли:
    - `break` - излиза от цикъла
    - `continue` - отива на следващата итерация на цикъла

```bash
for i in {1..10}
do
    if [ $i -eq 5 ]
    then
        break
    fi
    echo "Number: $i"
done
```

```bash
for i in {1..5}
do
    if [ $i -eq 3 ]
    then
        continue
    fi
    echo "Number: $i"
done
```

### Безкрайни цикли

- Ако искаме един цикъл да се изпълнява безкрайно има няколко начина да го постигнем:

```bash
while true
do
    echo "Running..."
    sleep 1  # Pause for 1 second
done
```

```bash
for (( ; ; ))
do
    echo "Infinite Loop"
    sleep 1
done
```
### Четене от файлове ред по ред

- Ако искаме да прочетем един файл ред по ред, можем чрез **while** цикъл:

```bash
while IFS= read -r line; do
    echo "Text read from file: $line"
done < my_filename.txt
```
### Четене на резултат от команда ред по ред

- Ако искаме да прочетем резултатът на команда ред по ред, пак можем чрез **while** цикъл:

```bash
while IFS= read -r line; do
    echo $line
done < <(sort /etc/passwd)
```

## Задачи

### 1. Обратно броене

Напиши скрипт, който използва `while` цикъл за обратно броене от 10 до 1. След като стигне до 1, да изпише "Start!".

### 2. Сума на числа

Напиши скрипт, който използва `until` цикъл, за да намери сумата на числата от 1 до N, където N е число, въведено от потребителя.

### 3. Прескачане на четни числа

Напиши скрипт, който използва `for` цикъл и `continue`, за да изведе само нечетните числа от 1 до 20.

### 4. Изход при специфично условие

Напиши скрипт, който използва `while` цикъл и `break`, за да чете числа от потребителя, докато потребителят въведе числото 0. При въвеждане на 0, скриптът трябва да спре и да изведе сумата на всички въведени числа.

### 5. Безкраен цикъл с изход

Напиши скрипт, който използва безкраен `while` цикъл. Скриптът трябва да изчаква потребителя да въведе думата "stop". Когато потребителят въведе "stop", скриптът трябва да спре.

### 6. Четене на файл и филтриране

Напиши скрипт, който чете файл ред по ред и извежда само редовете, които съдържат думата "error". Използвай `while` цикъл и `IFS`.

### 7. Брой думи във файл

Напиши скрипт, който чете файл ред по ред и преброява общия колко думи има на всеки ред. Допълнително скриптът трябва да принтира общият брой думи във файла. Използвай `while` цикъл и командата `wc`.

### 8. Генериране на случайни числа

Напиши скрипт, който генерира случайни числа между 1 и 100, докато не се генерира число, по-голямо от 90. Използвай `until` цикъл и командата `$RANDOM`.

### 9. Четене на команден изход

Напиши скрипт, който използва `while` цикъл, за да чете изхода на командата `ls -l` и да извежда само имената на файловете, които са с разрешение за запис за всички (т.е. имат `w` в последната част на правата).
