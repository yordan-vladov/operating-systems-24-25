
### Стъпка 1: Отвори файла във Vim

```bash
vim todo.txt
```

### Стъпка 2: Напиши с главна буква всяка дума във всички задачи

В команден режим (натисни `Esc`, ако не си сигурен), изпълни:

```vim
:%s/\<\w\+/\u&/g
```

 **Какво прави това**:
- `%s` = замени в целия файл
- `\<\w\+` = намери всяка цяла дума
- `\u&` = замени със същата дума, но с главна буква в началото

### Стъпка 3: Премести “Walk The Dog” на второ място в списъка

1. Намери реда:

```vim
/Walk The Dog
```

2. Изрежи реда:

```vim
dd
```

3. Отиди на втория ред:

```vim
2G
```

4. Постави го **над** текущия ред:

```vim
P
```

### Стъпка 4: Замени “Clean The Kitchen” с “Clean The Garage” (различава малки и главни букви)

```vim
:%s/\<Clean The Kitchen\>/Clean The Garage/g
```

### Стъпка 5: Отбележи завършените задачи

- Мини до всеки ред и добави `[x]` отпред:
    - Използвай `j`/`k` за движение
    - Използвай `I` за вмъкване в началото на реда
    - Напиши `[x]` и натисни `Esc`
- Повтори за:
    - Buy Groceries
    - Call Mom
    - Read A Book

### Стъпка 6: Добави задача с висок приоритет най-отгоре

Отиди най-горе:

```vim
gg
```

Вмъкни нов ред:

```vim
O
```

След това напиши:

```text
- [!] Pay Bills
```

След това натисни `Esc`.
### Стъпка 7: Изтрий задачата “Prepare Dinner”

Намери реда:

```vim
/Prepare Dinner
```

След това го изтрий:

```vim
dd
```

### Стъпка 8: Запази и излез

```vim
:wq
```
