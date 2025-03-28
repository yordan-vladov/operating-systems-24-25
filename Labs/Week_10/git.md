# Git и GitHub

Това упражнение ще видите базово как можете да работите с програмата **Git** и приложението **GitHub**.

## Какво е Git?

Git е _децентрализирана_ система за следене на промените в кодови и текстови файлове. Позволява ви да записвате историята на вашия проект и да се връщате към стари версии.

- **Основни концепции:**
    - **Хранилище (Repository)** – Папка, където Git следи промените.
    - **Комит (Commit)** – "Снимка" на промените в даден момент с описание.
    - **Клон (Branch)** – Отделна линия за разработка (напр. `main` за стабилна версия, `feature` за нови функции).
    - **Сливане (Merge)** – Обединяване на промени от един клон в друг.
- **За какво се използва?**
    - Проследяване на историята на кода.
    - Работа по екипни проекти без конфликти.
    - Връщане към стари версии при грешки.

## Какво е GitHub?

- GitHub е онлайн платформа, която предоставя _хостинг_ за Git хранилища. Чрез нея ние можем да съхраняваме нашите проекти, да ги споделяме с други хора, както и да работим върху общи проекти.
- **За какво се използва?**
    - Споделяне на код с другите (отворен или частен достъп).
    - Работа в екип (например софтуерни проекти).
    - Резервно копие на кода в облака.

## Задачи

 Това упражнение вие ще създадете хранилище в GitHub, ще създадете локално копие на това хранилище, ще добавите промени към това хранилище и ще ги запазите в GitHub.

### 1. Създаване на профил в GitHub

Ако нямате такъв още, създайте си профил в [GitHub](https://github.com/), използвайки училищните си профили.

### 2. Създаване на централно хранилище

Създайте си ново хранилище 'git-intro'. [Помощ](https://docs.github.com/en/repositories/creating-and-managing-repositories/quickstart-for-repositories)

### 3. Инсталиране на Git

Проверете дали имате инсталиран git:
```bash
git version
```

Ако не е, го инсталирайте:
```bash
apt-get install git
```

### 4. Клониране на хранилището

- Създайте копие на хранилището 'git-intro' на вашият компютър (локално хранилище). За целта трябва да използвате командата `git clone`. След като сте го клонирали, влезте в него.

```bash
git clone <url на вашето хранилище>
```

### 5. Създаване на нов файл

- Създайте нов файл използвайки текстов редактор или терминалът:

```bash
echo "<вашето име> <вашият номер>" > student.txt
```

### 6. Проверка на състоянието

- Проверете текущото състояние на хранилището:

```bash
git status
```

- Git ще покаже ново създаденият файл `student.txt` като "untracked file"

### 7.  Добавяне на файла

- Добавете файла към "staging area" (това ще го подготви да бъде включен следващият запис).:

```bash
git add student.txt
```

### 8. Запис на файла

- Запишете файла в хранилището заедно със съобщение.

```bash
git commit -m "Initial commit with hello.txt"
```

- `git commit` създава нова версия на проекта (нов запис или commit). Всеки запис е съпроводен със съобщение какви промени са направи в този запис.

###  9. Модификация на файла

- Направете някаква промяна към файла `student.txt`:

```bash
echo "Оценка: <оценката, която искате :)>" >> student.txt
```

### 10. Добавяне и запазване на промените

- Добавете модификациите и ги запишете:

```bash
git add student.txt
git commit -m "Updated student.txt with new information"
```

### 11. Добавяне на промените в GitHub

- Добавете промените, направени в локалното хранилище (вашият компютър), към централното хранилище (GitHub):

```bash
git push
```
### 12. Качете заданието

- Към заданието добавете линк към GitHub хранилището, както и екранна снимка на Commit историята на централното хранилище
