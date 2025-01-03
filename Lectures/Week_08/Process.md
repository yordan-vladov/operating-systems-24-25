# Процеси

---
## Съдържание

- Какво е процес?
- Състояния на процесите.
- Process Control Block.
---
## **Произход**

- Нуждата компютърът да може да изпълнява много програми по едно и също време.

---
## Какво е процес?

- Програма в изпълнение
- Също така наричана job, task и др.

---
## Процес - Компоненти

- Програмен код
- Стек - параметри на функции, return адреси, локални променливи
- Данни - глобални променливи
- Heap - динамично зададени данни

---

![](/Attachments/OS_Process_Pic_1.png)

---
## Процес - Състояния

- **Нов** - процесът се създава
- **Работещ** - инструкциите процеса се изпълняват
- **Чакащ** - процесът чака определено явление
- **Готов** - Процесът чака да получи достъп до процесора
- **Приключил** - Процесът е приключил своето изпълнение
---
![](/Attachments/OS_Process_Pic_2.png)

---
## Process Control Block

- Начинът, по който операционната система пази информация за различните процеси.
- Включва различни данни за процесът като:
    - **PID**: уникален идентификатор на процеса
    - **Състояние**:  дали е нов, работещ, чакащ, готов или приключил.
    - **Програмен брояч**: следващата инструкция на процеса.

---
- **Регистри**: имитират регистрите на физическият процесор. Заедно с PC пазят информация за състоянието, за да може процесът да бъде прекъсван и възстановяван.
- **Информация за планиране на CPU**:  приоритет на процеса, връзки към други процеси, др.
---
- **Информация за управление на паметта**:  структурата на виртуалната памет, др.
- **Метаданни**: използвано реално и CPU време, лимити, номера на процесите и др.
- **Състояние на I/O**: списък с I/O устройства, които се използват от процеса, отворени файлове и др.

---
![](/Attachments/OS_Process_Pic_3.png)

---

![](/Attachments/OS_Process_Pic_4.png)

---
