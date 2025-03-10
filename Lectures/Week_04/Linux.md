# Linux

---
## Съдържание

- Какво е Linux?
- История на Linux
- Linux дистрибуции

---
## Какво е Linux?

- Семейство от операционни системи, които са базирани на Linux ядрото
- Многозадачна и многопотребителска
- С общо предназначение

---

![](/Attachments/OS_Linux_Pic_1.png)
- **Пингвинът Tux**
---
## Linux ядро

- Основният компонент на операционната система
- Предлага поддържащият софтуер
- Написано главно на C (и малко на Rust)
- Поддържа се от общността

---
## Linux ядро - Версии

- Всяка версия има три компонента:
    - **major** номер
    - **minor** номер
    - **revision** номер
- Пример: 6.11.2
---

- Видовете версии са:
    - **Production** - имат четен **minor** номер (напр. 3.16.9)
    - **Development** - имат нечетен **minor** номер (напр. 6.11.2)
- Дадена версия на ядрото може да стотици ревизии

---

## Linux - Лиценз

- [Софтуер с отворен код](https://www.kernel.org/) (OSS)
- Използва [GPL-2.0](https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/LICENSES/preferred/GPL-2.0) лиценз
- Една от причините Linux да е предпочитан от компании и потребители

---

## OSS – Предимства

- разпространено сътрудничество
- бързо забелязване и коригиране на грешки
- функциите се развиват според потребителските нужди

---

## Linux - Популярност

- 4% пазарен дял - 2024
- около 32 млн. потребителя
- 3 млн. Anroid потребителя

---
## Linux - Предимства

- Намаляване на риска
- Намаляване на риска
- Задоволяване на нуждите на бизнеса
- Стабилност и сигурност

---

- Гъвкавост за различни хардуерни платформи
- Лесно персонализиране
- Лесно получаване на подкрепа
- Намаляване на разходите

---

## Намаляване на риска

- изпълнение на критични задачи (бази данни, e-търговия, манипулиране на данни)
- софтуерът често трябва да се промени заради нуждите в пазара
- това може да е скъпо и рисковано

---
## Намаляване на риска - Сценарий

- ABC Inc. купува софтуер от ACME Inc., за да проследява информация за продажбите и потребителите си през Интернет.
- Какво ще стане ако ACME Inc. прекрати дейността си или спира поддръжка на продаденият продукт.

---

- Ако вместо това ABC избере да използва OSS продукт и първоначалните разработчици станат недостъпни за поддръжката му, тогава ABC ще бъде свободен да вземе изходния код, да добави функции към него и да го поддържа сами.

---

## Задоволяване на бизнес нужди

- Linux е добра база за други OSS проекти, които задоволяват всякакви потребителски нужди. Този софтуер може да включва:
    - Бази данни
    - Офис пакети
    - Браузъри
    - ...

---

## Стабилност и сигурност

- Софтуерът е свободно достъпен за всички
- Ако в софтуерът има бъг, шансът той да се открие и да се отстрани е увеличен
- При софтуер със затворен код потребителят трябва да разчита на доставчика

---

- През април 2008 г. Linux има по-малко от 100 известни вируса, а Windows - повече от един милион
- Заради ниският пазарен дял, много малко вируси се пишат за Linux desktop-и
- От друга страна Linux сървърите са по-голяма мишена за атаки

---

## Гъвкавост

- x86/64 и ARM
- стари компютри и суперкомпютри
- смартфони, таблети
- [Космически кораби](https://thenewstack.io/the-hardware-and-software-used-in-space/), Четци, Рутери, ...

---

## Лесно персонализиране

- различни части на операционната могат да бъдат персонализирани спрямо потребителските нужди
- това най-често включва компилирането на различни модули на ядрото и инсталираните пакети

---

## Пример за Linux Desktop

- Графичен интерфейс, пакети, които потребителят ще използва всекидневно (браузър, офис пакет, снимки, ...)
- Драйвери устройства, които потребителят ще използва (Wi-Fi, Bluetooth, Графики, ...)
- Потребителят може да си [персонализира работата](https://www.reddit.com/r/unixporn/)

---

## Пример за Linux Сървър

- Ще включва единствено пакетите, нужни на сървъра да си изпълнява задачите
- Включени драйвери ще бъдат значително ограничени
- Така сървърът ще има нужда от по-малко пространство и ще бъде по-бърз

---
## Лесна подкрепа

- Цял свят Linux документация се предлага безплатно в Интернет
- Популярни източници: [Arch Wiki](https://wiki.archlinux.org/title/Main_page), [LDP](https://tldp.org/), [Die](https://linux.die.net), ...
- Предлага се и [професионална подкрепа](https://www.redhat.com/en/technologies/linux-platforms/enterprise-linux)

---
## Намаляване на разходи

- Разходи като добиване на софтуер (безплатно), купуване на подходящ хардуер, наемане на хора за поддръжка.
- За лична употреба: "Linux е безплатен ако не си цениш времето."

---

| Операционна система           | Linux | ОС със затворен код |
| ----------------------------- | ----- | ------------------- |
| Цена на операционната система | 0$    | > 0$                |
| Административни разходи       | Ниски | Умерени/високи      |

---

| Операционна система              | Linux         | ОС със затворен код |
| -------------------------------- | ------------- | ------------------- |
| Цената на допълнителен софтуер   | Ниска/Никаква | Висока              |
| Цената на софтуерните надстройки | Ниска/Никаква | Умерена/висока      |

---

# История

---

## Unix

- Създадена от Кен Томпсън и Денис Ричи
- Написана е на C, което я прави лесно преносима
- Платена ОС, използвана от големи корпорации

---

## Хакерска култура

- **Хакер**: Човек, който иска да разшири знанията си за компютри чрез експериментиране
- Много от хакерите от това време са инженери или учени, т.е са запознати с UNIX

---

## Ричард Столман

- Основател на **Free Software Foundation**
- Вярва, че софтуерът трябва да може да се споделя свободно
- UNIX е в конфликт с тази идея

---
![](/Attachments/OS_Linux_Pic_2.png)
- **Ричард Столман**
---

## GNU  Project

- **GNU is Not UNIX**
- Фондация, която насърчава разработката на свободна операционна система, която не е UNIX
- GNU Public License (GPL)

---
![](/Attachments/OS_Linux_Pic_3.png)
- **GNU лого**
---
## Linux

- GNU операционна система така и не се развива
- Вместо това през 1991 Линус Торвалдс разработва Linux под GPL Лиценз
- Linux след това става фокусна точка на свободният софтуер

---
![](/Attachments/OS_Linux_Pic_4.png)

---
## GNU/Linux

- Операционна, която използва:
    - Linux ядрото
    - Системен софтуер и библиотеки, предоставени от GNU (glibc, gnu coreutils, ...)

---

# Дистрибуции

---

## Linux From Scratch

- Компилираме, инсталираме и конфигурираме всичките компоненти сами
- Ядро => Системни програми => Потребителски програми
- Не се препоръчва за повечето случаи

---

## Linux Дистрибуция

- Операционна система, основана върху Linux ядрото
- Значително улеснява използването на Linux по следните начини:

---
## 1. Инсталация

- Базовите компоненти  (ядро, системни функции, потребителски програми) са предварително конфигурирани
- Тези програми са често в бинарен изпълним формат
- Повечето дистрибуции предлагат автоматизирани инсталатори

---
## 2. Управление на процеси

- **init** система - първият процес, който се пуска, контролира всички други процеси
- Дистрибуцията предварително конфигурира init системата
- Популярни init системи - systemd, openrc, launchd

---
## 3. Управление на софтуер

- Потребителят няма нужда сам да си компилира програмите
- Софтуерът се организира в пакети, които операционната система управлява чрез **пакетен мениджър**

---
## Пакет

- Програмният софтуер, заедно с важни метаданни (име, версия, зависимости, ...)
- Пакетите често се пазят в общо хранилище
- Софтуер, който не се намира в хранилището трябва да се инсталира ръчно

---
## Пакетен мениджър

- Програма, който отговаря за изтеглянето, актуализирането и триенето на пакети
- Популярни пакетни мениджъри (apt, dnf, pacman)

---
## 4. Потребителски интерфейс

- Повечето дистрибуции идват с **desktop environment** (графичен интерфейс и допълнителни полезни приложения)
- Популярни десктопи: GNOME, KDE, XFCE, ...

---

## Видове дистрибуции

- **Fixed Release** - Издават нова версия през определен период
- **Rolling Release** - Постоянно издават ъпдейти

---
## Fixed release

- Промени в основните компоненти на системата (ядро, desktop, приложения ...) се чрез нова версия
- Всички промени се тестват добре преди да са издадени и осигуряват стабилен UX
- Потребителите нямат достъп до най-новите пакети

---
![](/Attachments/OS_Linux_Pic_5.png)

---

![](/Attachments/OS_Linux_Pic_6.png)
**Debian**

---

![](/Attachments/OS_Linux_Pic_7.png)

---
## Rolling release

- Дистрибуцията няма различни версии, нови промени се въвеждат постоянно
- Потребителят има достъп до най-новите пакети, но някои ъпдейти могат да счупят системата

---

![](/Attachments/OS_Linux_Pic_8.png)

---

## Rolling vs Fixed

- Fixed - за потребители, които искат стабилен UX, без да се допълнителни усилия, както и за сървъри
- Rolling - за потребители, които знаят какво правят и искат достъп до най-новият софтуер

---
