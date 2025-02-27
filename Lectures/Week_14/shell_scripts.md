# Shell Скриптове

---
## Съдържание

- Какво е shell?
- Какво е shell скрипт?
- Работа със shell скриптове.
---
## Какво е Shell?

- Команден интерпретатор.
- Позволява ни да пишем команди, които да се изпълняват от операционната система.
---
### Bash

- **Bourne Again Shell**.
- Подразбиращият се шел за повечето **Linux** дистрибуции.
- Конфигурира се чрез `.bashrc` и `.bash_profile.`
---
- **Функционалности:** история на командите, auto completion.
- **Предимства:** добре поддържан, документиран.
- **Недостатъци:** по-бавен от съвременни шелове.
---
## Zsh

- По-развита версия на Bash с повече функционалности.
- Конфигурира се чрез `.zshrc`,  `zsh_profile`, както и чрез фреймуърци като [oh my zsh](https://ohmyz.sh/).
---
- **Функционалности:** мощен auto complete, globbing
- **Предимства:** лесно персонализираме, повече функционалности
- **Недостатъци:** по-труден за научаване
---
## Shell Script

- Серия от команди, записани във файл.
- Командите се изпълняват ред по ред, подобно на програмни езици като Python.
- Shell скриптовете се  обозначават с `.sh`.
---
### Shell Script - Структура

```bash
#! shebang

commands
```
---
### Shebang

-  "#!", последвано от интерпретаторът/шелът, който ще изпълнява командите.
- Примери: #! /bin/bash, #! /bin/zsh, #! /bin/python
---
### Bash скрипт

- Скрипт, който се изпълнява от Bash шелът.
- Първият ред винаги ще бъде "#! /bin/bash".
---
## Изпълнение на скрипт

- Shell скриптовете са изпълними файлове, след. ги изпълняваме като въведем техният адрес.
- За тези цел трябва да имаме "execute" привилегии върху тях.
---
## Скрипт - Пример

- Скрипт, който принтира "Hello, World", когато е извикван.
```bash
echo "#! /bin/bash" > hello.sh
echo "echo 'Hello, World'" >> hello.sh
chmod +x hello.sh
./hello.sh
```
---
## Променливи

- Скриптовете могат да пазят информация в различни променливи.
```bash
foo="Operating Systems"
echo "I love $foo!"
```
---
- Те могат да съдържат прости данни:
```bash
message="Hello World"
short_message=hi
number=1
pi=3.142
other_pi="3.142"
mixed=123abc
```
---
- Или резултат от команда:
```bash
name=$(cat name.txt)
echo "My name is $name."
```
---
## Променливи - Пример

- Прост скрипт, който приветства потребителя и му казва текущата дата и време:
```txt
Hello, stamat!
Welcome to linux.
Today's date is 1999-01-01 and the current time is 21:17:04.
```
---
```sh
#!/bin/bash

# Variables
DATE=$(date +"%Y-%m-%d")
TIME=$(date +"%H:%M:%S")

# Greet the user
echo "Hello, $USER!"
echo "Welcome to $HOST."
echo "Today's date is $DATE and the current time is $TIME."
```
---
- Скрипт, който принтира името на потребителя, home директорията му, и предпочитаният му шел.
---
## Аритметика

```bash
#!/bin/bash

echo $((1 + 3)) # 4
```

---
## Какво ще се върне тук?

```bash
#!/bin/bash

a=3
b=a
echo $b
```
---
## Константи

```bash
#!/bin/bash

readonly A=5
A=6 # error

echo $A
```

---
## Сравнения

```bash
if [ condition ]; then
# Commands to run if condition is true
fi
```
---
## Аритметични оператори за сравнение

| Оператор | Значение  |
| -------- | --------- |
| `-eq`    | Равно     |
| `-ne`    | Неравно   |
| `-gt`    | По-голямо |
| `-lt`    | По-малко  |

---

| Оператор | Значение            |
| -------- | ------------------- |
| `-ge`    | По-голямо или равно |
| `-le`    | По-малко или равно  |

---
```bash
#!/bin/bash
if [ 5 -gt 3 ]; then
    echo "5 is greater than 3"
fi
```

---
```bash
if [ condition ]; then
    # Commands if condition is true
else
    # Commands if condition is false
fi
```
---
```bash
#!/bin/bash
num=15
if [ "$num" -gt 10 ]; then
    echo "Number is greater than 10"
else
    echo "Number is 10 or less"
fi
```
---
```bash
if [ condition1 ]; then
    # Commands for condition1
elif [ condition2 ]; then
    # Commands for condition2
else
    # Commands if none are true
fi
```
---
```bash
#!/bin/bash

num=10
if [ "$num" -gt 10 ]; then
    echo "Greater than 10"
elif [ "$num" -eq 10 ]; then
    echo "Equal to 10"
else
    echo "Less than 10"
fi
```
---
### (( )) - Работа с числа

```bash
a=-5
if ((a < 0)); then
	echo "$a is negative."
elif ((a > 0)); then
	echo "$a is positive."
else
	echo "$a is zero."
fi
```
---
- Напишете **bash** скрипт, който сравнява две числа и принтира кое от тях е по-голямо или са равни.
---
```bash
#! /bin/bash
a=5

if ((a % 2 == 0)); then
    echo "$a is even"
else
    echo "$a is odd"
fi
```
---
### Логически оператори

| Оператор    | Значение      |
| ----------- | ------------- |
| `&&` , `-a` | Логическо И   |
| \|\|, `-o`  | Логическо ИЛИ |
| `!`         | Логическо НЕ  |

---

```bash
if [ "$num" -gt 5 ] && [ "$num" -lt 20 ]; then
    echo "Number is between 5 and 20"
fi
```

---
- Напишете **bash** скрипт, който взима число и принтира **Fizz** ако числото се дели на 3, **Buzz** ако се дели на 5, и **FizzBuzz** ако се дели и на двете. Иначе принтира само числото.
---
## Текстови оператори за сравнение

| Оператор | Значение     |
| -------- | ------------ |
| `=`      | Равно        |
| `!=`     | Неравно      |
| `<`      | По-малко     |
| `>`      | По-голямо    |
| `-z`     | Празен       |
| `-n`     | Непразен низ |

---
```bash
#!/bin/bash
str1="hello"
str2="world"

if [ "$str1" = "$str2" ]; then
    echo "Strings are equal"
else
    echo "Strings are different"
fi
```
---
```bash
#!/bin/bash
str1="hello"

if [ -z "$str1" ]; then
    echo "String is empty"
else
    echo "String is not empty"
fi
```
---
```bash
if [[ "$str1" < "$str2" ]]; then
    echo "$str1 comes before $str2 in sorting"
fi
```

---
### Файлови оператор

| Оператор | Описание              |
| -------- | --------------------- |
| `-f`     | Файл съществува       |
| `-d`     | Директория съществува |
| `-e`     | Ресурс съществува     |
| `-r`     | Ресурс е четим        |
| `-w`     | Ресурс е редактируем  |
| `-x`     | Ресурс е изпълним     |

---

```bash
if [ -f "myfile.txt" ]; then
    echo "File exists"
else
    echo "File does not exist"
fi
```

---
- Напишете **bash** скрипт, който добавя съобщение към файл. Ако файлът не съществува, да се принтира "File does not exist".
---
## Четене на данни

- shell скриптовете могат да приемат потребителски данни по различни начини.
---
### read

- Позволява ни да въвеждаме данни по време на изпълнението на самият скрипт.
```bash
read var
echo $var
```
---
```bash
read var1 var2
echo "First: $var1, Second: $var2"
```
---
```bash
#! /bin/bash

# read a variable with a prompt
read -p "Enter your name: " name
echo $name
```
---
- Shell скрипт, който чете възрастта на потребителя и проверява дали той може да гласува.
---
```bash
read -s password
echo "Password $password entered"
```
---
-  Shell скрипт, който чете парола от потребителя и я сравнява с истинската парола от файл `password.txt`. Скриптът след това принтира дали паролите съвпадат.
---
### Командни аргументи

- При shell скриптовете лесно можем да задаваме аргументи от командната линия.
```bash
./script.sh arg1 arg2
```
---
- Те могат да се четат в самият чрез позицията им при задаването на командата:
```bash
#!/bin/bash
echo "First argument: $1"
echo "Second argument: $2"
```
---

| Променлива      | Значение                     |
| --------------- | ---------------------------- |
| $0              | Името на скрипта             |
| $1, $2, ..., $9 | Позиционни аргументи         |
| $#              | Брой аргументи               |
| $*              | Всички аргументи             |
| "$@"            | Всички аргументи (разделени) |

---
```bash
#!/bin/bash
# Usage: ./greet.sh name

if [ $# -ne 1 ]; then
    echo "Usage: $0 name"
    exit 1
fi

echo "Hello, $1! Welcome!"
```
---
- Скрипт, който получава като аргумент две числа и принтира техният сбор.
