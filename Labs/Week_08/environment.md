# Linux - Среда

- В това упражнение ще видим различните начини по които можем да променяме средата на нашият shell. Ще се запознаем с променливите на средата, техните свойства, как можем да ги използваме и променяме.

## Какво е среда?

- В Linux терминът "среда" се отнася до група от променливи на средата, които съдържат важна информация за операционната система и текущата сесия. Тези променливи се използват от shell-а (обвивката на командния ред) и от изпълнимите файлове, за да знаят в какъв контекст работят.
- Когато стартираме процес (например отваряме терминал или изпълняваме скрипт), той наследява променливите на средата от родителския си процес. Това позволява на програмите да работят с правилна конфигурация без ръчно задаване на параметри всеки път.

## Преглед на променливите на средата

- В Linux можем да разглеждаме и модифицираме променливите на средата чрез командния ред.

### Показване на всички променливи

- За да видим какви променливи са дефинирани в нашата среда, можем да използваме следните команди:

```bash
printenv
env
```

- Те извеждат списък от създадените **environment** променливи и техните стойности.

### Показване на конкретна променлива

- Ако искаме да видим стойността на конкретна променлива можем да използваме следните команди:

```bash
printenv VAR_NAME
echo $VAR_NAME
```

- Например тези команди принтират нашата **home** директория:

```bash
printenv HOME
# or
echo $HOME
```

## Често използвани променливи

- Ето някои от най-често използваните променливи:

| Променлива | Описание                        |
| ---------- | ------------------------------- |
| `USER`     | Текущият потребител             |
| `HOME`     | Домашната директория            |
| `PWD`      | Текущата директория             |
| `SHELL`    | Текущият shell                  |
| `PATH`     | Директории с изпълними файлове  |
| `LANG`     | Език и локализация              |
| `TERM`     | Използваният терминал           |
| `EDITOR`   | Предпочитаният текстов редактор |

## Създаване и промяна на променливи

### Дефиниране на променлива

- Можем да създадем нова променлива на средата по следния начин:

```bash
MY_VAR="Hello, Linux!"
```

- За да проверим дали променливата е създадена:

```bash
echo $MY_VAR
```

- Когато създадем променлива по този начин, тя ще бъде достъпна за текущата сесия. При затваряне на терминала, тя ще бъде загубена. Допълнително тя няма да бъде достъпна за дъщерни процеси (други шелове, програми, др.)

### Експортиране на променлива

- За да направим променливата достъпна за дъщерни процеси (например ако стартираме друга shell сесия, програми, скриптове), трябва да използваме `export`:

```bash
export $MY_VAR="Hello, Linux!"
```

## Постоянни променливи

- Ако искаме дадена променлива да бъде достъпна след рестартиране на терминала или компютъра, трябва да я добавим в конфигурационен файл.

### Добавяне в ~/.bashrc

- Ако използваме Bash (по подразбиране в Ubuntu), можем да добавим следния ред в `~/.bashrc`:

```bash
export MY_VAR="Hello, Linux!"
```

- След това за да запазим промените:

```bash
source ~/.bashrc
```

- Ако използваме друг шел тогава ще пронемим неговият конфигурационен файл (напр. `zsh` => `~/.zshrc`).

### Добавяне в /etc/environment

- Ако искаме променливата да бъде глобална (достъпна за всички потребители), можем да я добавим в `/etc/environment`. Това изисква администраторски права:

```bash
sudo nano /etc/environment
```

- Добавяме реда:

```bash
MY_VAR="Hello, Linux!"
```

- Запазваме промените:

```bash
source /etc/environment
```

## Премахване на променлива на средата

- Ако искаме да премахнем дадена променлива от текущата сесия, използваме:
```bash
unset MY_VAR
```

- За да я премахнем завинаги, трябва да я изтрием от съответния конфигурационен файл (~/.bashrc, /etc/environment и т.н.).

## Заключение

- Променливите на средата са мощен инструмент в Linux, който ви позволява да персонализирате работната среда, да конфигурирате софтуер и да автоматизирате процеси.
- Разбирането и ефективното им използване могат значително да подобрят вашата продуктивност.
- **Обобщение на основните команди:**
    -  `printenv` – показва всички променливи на средата.
    -  `echo $VAR_NAME` – извежда стойността на променлива.
    -  `VAR_NAME="value"` – създава променлива.
    - `export VAR_NAME="value"` – създава променлива и я прави достъпна за дъщерни процеси.
    - `unset VAR_NAME` - премахва променливата.
    - Добавяне в `~/.bashrc` - прави променливата постоянна

## Задачи

### 1. Преглед на текущите променливи на средата

- Изведете списък с всички текущи променливи на средата и намерете стойността на променливата HOME.

### 2. Създаване на нова променлива на средата

- Създайте променлива с име MY_NAME, която съдържа вашето име, и изведете нейната стойност.

### 3. Запазване на променлива след рестартиране

- Направете така, че създадената по-горе променлива MY_NAME да бъде достъпна и след рестартиране на системата.

### 4. Добавяне на директория към PATH

- Създайте директория `~/scripts_212`. Добавете я към PATH, така че командите в нея да могат да се изпълняват без посочване на пълния път.
- **Насоки:** За да добавяне на директория към `PATH`:

```bash
export PATH=$PATH:dir_name
```

### 5. Временна промяна на LANG

Стартирайте командата `ls -l` така, че изходът ѝ да бъде на френски, но без да променяте глобалната стойност на `LANG`.

```bash
LANG=fr_FR.UTF-8 ls -l
```

### 6. Създаване на потребителска променлива в /etc/environment

- Направете променливата `FAVORITE_COLOR="blue"` глобална, така че да бъде налична за всички потребители в системата.

###  7. Премахване на променлива

- Премахнете създадената променлива `MY_NAME` от текущата сесия.

### 8. Създаване на персонализирано съобщение при влизане в терминала

- Създайте променлива `WELCOME_MSG`, която съдържа персонализирано съобщение, и направете така, че това съобщение да се показва при всяко стартиране на терминала.

### 9. Създаване на временна и постоянна променлива PROJECT_DIR

1. Създайте временна променлива `PROJECT_DIR`, която съдържа пътя до `/home/username/projects`.
2. Добавете я в `~/.bashrc`, за да стане постоянна.

### 10. Изтриване на променливи и предаване

- Премахнете всички променливи, които сте създали по време на упражнението.
- Качете екранни снимки на командите, които сте използвали, както и на файловете, които сте променили.
