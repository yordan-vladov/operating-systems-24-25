# Shell Скриптове - Част 3

- В това упражнение ще продължим разработването на  shell скриптове.

### for цикли

- Базовият **for** има следната структура:

```bash
for variable in list
do
    # Commands to execute
done
```

- Чрез него ние можем да минем през списък от стойности. Например тук минаваме през списък от имена:

```bash
#!/bin/bash
for name in Alice Bob Charlie
do
    echo "Hello, $name"
done
```

- Ако искаме да минем през стойности от определен диапазон можем да използваме операторът `{}`:

```bash
for i in {1..5}
do
    echo "Number: $i"
done
```

- Или ако искаме по-традиционен цикъл, можем да използваме `(())`:

```bash
#! /bin/bash

for (( i = 0; i < 5; i++));
do
    echo $i
done
```

- Ако искаме да минем през всички командни аргументи, можем да използваме `for` цикъл:

```bash
for arg in "$@"; do
  echo "Arg: $arg"
done
```

- Ако искаме да минем през всичките ресурси на текущата директория:

```bash
for file in *; do
    echo $file
done
```

## Задачи

### 1. Сумиране на числа от 1..n

- Напишете shell скрипт, който приема като команден аргумент цяло положително число **n** и намира сумата на всички числа от 1 до n.
- Валидирайте броят аргументи на скрипта.
- Бонус: Намерете допълнителен начин да решите задачата без цикъл.
### 2. Сумиране на числа от n..m

- Напишете shell скрипт, който приема като команден аргумент две цели положителни числа **n** и **m** и намира сумата на всички числа от n до m.
- Валидирайте броят аргументи на скрипта.
- Бонус: Намерете допълнителен начин да решите задачата без цикъл.
### 3. FizzBuzz

- Напишете shell скрипт, който приема като команден аргумент цяло положително число **n**.
- За всички числа от 1 до n принтирайте:
    - **Fizz** ако числото се дели на 3.
    - **Buzz** ако се дели на 5.
    - **FizzBuzz** ако се дели и на двете.
    - Само числото, ако не се дели на нито едното.
### 4. Отпечатване на четни числа

- Напишете shell скрипт, който приема като командни аргументи произволен брой положителни цели числа.
- Скриптът след това само четните подадени числа.
### 5. Принтиране на привилегии

- Напишете shell скрипт, който приема като командни аргументи произволен брой имена  на файлове.
- За всеки подаден файл скриптът принтира:
    - дали файлът съществува
    - ако съществува, дали потребителят може да го чете/пише/изпълнява.
### 6. Извеждане на файлове

- Напишете shell скрипт, който извежда съдържанието на всички **четими** файлове от текущата директория.
