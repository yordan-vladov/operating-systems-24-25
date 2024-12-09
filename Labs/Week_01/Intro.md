# Linux - Основни Команди

---

## whoami

- Извежда името на текущият потребител.

---

## pwd

- Извежда пътя на текущата директория.

---

## ls

- извежда съдържанието на директория

```
ls # извежда съдържанието на текущата директория
ls example # извежда съдържанието на директорията example
```

---

## ls - опции

```
ls -a # извежда съдържанието плюс скрити файлове
ls -l # извежда съдържанието в дълъг формат
```

---

## clear

- изчиства терминала

---

## mkdir

- създава нова празна директория

```
mkdir a # създава празна директория а
mkdir b c d # създава директории b, c и d
mkdir "b c d" # създава директория "b c d"
```

---

## touch

- създава празен файл

```
touch a # създава празен файл а
touch b c d # създава файлове b, c и d
touch "b c d" # създава файл "b c d"
```

---

## nano

- beginner-friendly конзолен текстов редактор

```
nano a.txt # отваря a.txt за редактиране
```


---

## cat

-  извежда съдържанието на файл или конкатенира няколко файла

```
cat a.txt // извежда съдържанието на a.txt
cat a.txt b.txt // извежда съдържанието на a.txt и b.txt
```

---
## mv

- служи за преместване или за преименуване

```
# имаme файл 'a.txt' и директории 'b' и 'c'
mv а.txt b.txt # преименуваме 'a.txt' на 'b.txt'
mv b.txt b # преместваме 'b.txt' в 'b'
mv b d # преименуваме 'b' на 'd'
mv d c # преместваме 'd' в 'c'
```

---

## cp

- служи за копиране

```
cp а.txt b.txt # копираме съдържанието на 'a.txt' в 'b.txt'
```

---

## rm

-  трие файлове или директории

```
# имаме файл 'a.txt' и директория 'b'
rm a.txt # трие файлът 'a.txt'
rm -r 'b' # трие директорията 'b' рекурсивно
```

---

## rmdir

-  трие празни директории

---

## Задача

- имплементирайте следната проектна структура

```
/home/<your-username>/school
│
├── assignments
│   ├── operating_systems.txt
│   ├── databases.txt
│   └── math.txt
│
├── class_notes
│   ├── operating_systems_notes.txt
│   ├── databases_notes.txt
│   ├── math_notes.txt
│   └── drafts
│       └── draft_notes.txt
│
└── resources
    ├── operating_systems_recourses.pdf
    ├── databases_resources.pdf
    ├── math_resources.pdf
    └── images
        ├── os_diagram.jpg
        └── math_problem.jpg
```
