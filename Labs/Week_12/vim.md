# Vim

**Vim** е мощен текстов редактор, който работи директно от терминала. Той е особено популярен сред програмисти и системни администратори заради своята бързина, гъвкавост и възможности за автоматизация. Името идва от **Vi IMproved** – подобрена версия на по-стария редактор `vi`.

## Режим на работа

**Vim** се отличава със своите различни режими на работа. Спрямо режимът, в който сме, различните клавиши, клавишни комбинации ще имат различна функционалност. Основните режими са:

- **Нормален режим** - за навигация и команди.
- **Insert режим** - за писане на текст.
- **Visual режим** - за маркиране на текст.
- **Command-line режим** - за изпълнение на команди (записване, излизане и др).

Когато влезем във vim, ние по подразбираме сме в нормален режим. За влезем в друг режим трябва да натиснем конкретен бутон. Например чрез `i` влизаме в **Insert** режим и можем да въвеждаме текст. Чрез `Esc` се връщаме обратно в нормален режим.

## Задачи за самостоятелна работа

### Задача 1: Отвори файл и напиши нещо

1. Отвори терминала.
2. Стартирай Vim:
```bash
vim test.txt
```
3. Натисни `i` за да влезеш в Insert mode.
4. Напиши нещо (примерно "Здравей, Vim!").
5. Натисни `Esc` за да излезеш от Insert mode.
6. Напиши `:wq` и натисни Enter – това ще запише и затвори файла.

### **Задача 2: Навигация в текста**

1. Отвори същия файл с `vim test.txt`.
2. Пробвай:
    - `h`, `j`, `k`, `l` – местене наляво, надолу, нагоре, надясно.
    - `gg` – отива в началото на файла.
    - `G` – отива в края.
    - `w` – мести напред към следваща дума.
    - `b` – мести назад към предишна дума.

### **Задача 3: Редактиране**

1. Отвори файл.
2. Направи следното:
    - `x` – изтрий знак.
    - `dd` – изтрий ред.
    - `u` – undo.
    - `Ctrl + r` – redo.
    - `yy` – копирай ред.
    - `p` – постави след курсора.

### **Задача 4: Търсене**

1. Отвори файлът `/etc/passwd` (`vim /etc/passwd`).
2. Натисни `/` и напиши дума, напр. `/bin`.
3. Натисни `n` за следващо съвпадение, `N` за предишно.

### **Задача 5**

- Имате файл `todo.txt` със следното съдържание:
```diff
- Buy groceries
- Finish report for work
- Call mom
- Clean the kitchen
- Read a book
- walk the dog
- prepare dinner
```

- Извършете следните задачи:
    1. Отворете файлът с Vim.
    2. Направете така че всяка дума да започва с главна буква (напр. `Buy Groceries`, `Finish Report For Work`).
    3. Преместете `Walk The Dog` да бъде на второ място в списъка.
    4. Заместете `Clean The Kitchen` с `Clean The Garage`.
    5. Маркирайте всички изпълнени задачи с `[x]` пред тях: `Buy Groceries`, `Call Mom`, и `Read A Book`.
    6. Добавете нова високо-приоритетна задача най-отгоре: `- [!] Pay Bills`
    7. Изтрийте задачата `Prepare Dinner`.
    8. Запазете промените и излезте от Vim.
    9. [Подсказки](./hints.md)
