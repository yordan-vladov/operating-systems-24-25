# Операционната система

---

# Операционна Система - Функции

---

## Какво прави операционната система?

- Улеснява изпълнението на програмите
- Разпределя ресурси между програмите
- Прави връзка между програми и устройства

---

## Виртуализация - 1/3

- Взима физически ресурс и го трансформира в по-обща, мощна и лесна за използване виртуална форма
- ОС понякога се нарича виртуална машина

---

## Виртуализация - 2/3

- Предоставя интерфейс, чрез който потребителите могат да достъпват различни функционалности
- Този интерфейс наричаме стандартна библиотека

---

## Виртуализация - 3/3

- Много програми искат достъп до едни и същи ресурси едновременно
- Операционната система разпределя ресурсите по справедлив и ефективен начин

---

## Виртуализация на процесор

- няколко процеса могат да работят "едновременно"

---

![Virtual_Processor.png](/Attachments/Virtual_Processor.png)

---

## Виртуализация на паметта

- всяка програма има своя собствена "виртуална" памет - наречена адресно пространство
- операционната система мапва всяко адресно пространство върху реалната памет

---

![Virtual_Memory.png](/Attachments/Virtual_Memory.png)

---

## Паралелност

- В една програма се случват няколко неща едновременно
- Този проблем се отнася и до самите програми

---

![Multithreading.png](/Attachments/Multithreading.png)

---

# Постоянство

- Дълготрайна информация се пази в диска
- ОС управлява тази информация чрез файлова система
---

![Example_Firesystem.png](/Attachments/Example_Firesystem.png)

---
## Файлова система

- ОС споделя информацията между файловете
- Пример: Създаване на програма

---

```bash
nano main.c #създаване на програма
gcc -o main main.c #компилиране на програма
./main #изпълняване на програма
```

---

![Opening_a_file.png](/Attachments/Opening_a_file.png)

---

![Writiing_To_A_File.png](/Attachments/Writiing_To_A_File.png)

---

![Closing_A_Connection.png](/Attachments/Closing_A_Connection.png)

---

![File_System_Abstraction.png](/Attachments/File_System_Abstraction.png)

---
## ОС - Цели 1/2

1. Абстракция
2. Производителност
3. Сигурност
4. Надеждност

---
## Абстракция

-  Операционната система улеснява създаването и използването на софтуер
- Скрива много от съществените процеси
- Пример: виртуализация на паметта, файлова система, т.н
---

## Производителност

- Премахване на ненужни разходи
- Често влиза в конфликт с абстракцията

---

## Сигурност

- Защита на приложенията едно от друго
- Защита между приложенията и ОС
- Основен принцип при защитата е изолацията

---

## Надеждност

- ОС трябва да работи нон-стоп
- Крашнала ОС трябва да може да се възстанови

---
## ОС - Цели 2/2

5. Енергоефективност
6. Мобилност
...

---
