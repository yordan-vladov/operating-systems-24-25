# Users And Groups - Tasks

## Създаване на потребител

1. Създайте нов потребител във `<първо име>_<номер>` (пример: `stamat_21601`). Потребителят да има home директория със същото име и да използва bash по подразбиране
2. Задайте парола на новият си потребител
3. Проверете дали потребителят е създаден, като видите файлът `/etc/passwd`

```bash
sudo useradd -d /home/stamat_21601 -s /bin/bash stamat_21601
sudo passwd stamat_21601
cat /etc/passwd | grep stamat_21601
```

## Създаване на група

1. Създайте група `students` ако не съществува. Добавете новият потребител към тази група
2. Проверете дали потребителят е добавен чрез командата `groups`

```bash
sudo groupadd students
sudo usermod -aG students stamat_21601
groups stamat_21601
```

## Модифициране на потребител

1. Преименувайте вашият потребител така че да бъде във формат `<име>_<фамилия>_<номер>`
2. Променете home директорията да спазва същият шаблон

```bash
sudo usermod -l stamat_temelkov_21601 stamat_21601
mv /home/stamat_21601 /home/stamat_temelkov_21601
sudo usermod -d /home/stamat_temelkov_21601 -m stamat_temelkov_21601
```
## Даване на дата на изтичане

1. Дайте дата на изтичане на акаунта на вашият потребител '2025-06-30'
2. Проверете дали промените са въведени

```bash
sudo chage -E 2025-06-30 stamat_temelkov_21601
sudo chage -l stamat_temelkov_21601
```

## Влизане като потребител

1. Отворете нов терминал и влезте новосъздаденият потребител
2. Проверете като кого сте влезнали

```bash
su - stamat_temelkov_21601
whoami
```

## Променяне на собственост

1. Като потребителят `uktc` създайте директория `/school`
2. Направете собственикът ѝ да е новосъздаденият потребител а групата ѝ да бъде `students`
3. Проверете дали промените са успешни

```bash
sudo mkdir /school
sudo chown stamat_temelkov_21601:students /school
ls -ld /school
```

## Триене на потребители и групи

1. Изтрийте новосъздаденият потребител, както и групата `students`
2. Премахнете директорията `/school`

```bash
sudo userdel yordan_vladov_12345
sudo groupdel students
sudo rm -r /school
```
