1. Свалете директорията [operating-systems-24/25](https://github.com/yordan-vladov/operating-systems-24-25) от заданието. Сложете я във вашата 'home' директория и навигирайте към нея. Тя има следната структура:

```txt
operating-systems-24-25
├── Attachments
│   ├── 96_bit_memory_organization.png
│   ├── ASCII_Table.png
│   ├── ASCII_Values_To_Bytes.png
│   ├── Binary_Number_Into_Bytes.png
│   ├── BIts_From_Electric_Signal.jpg
│   ├── Closing_A_Connection.png
│   ├── CPU_Structure.png
│   ├── Data_Path.png
│   ├── Example_DE.png
│   ├── Example_Firesystem.png
│   ├── Example_HTML.png
│   ├── Example_Parameters.png
│   ├── Example_System_Calls.png
│   ├── Example_Terminal.png
│   ├── FDE_Animation.png
│   ├── File_System_Abstraction.png
│   ├── Funny_Keyboard.png
│   ├── Funny_Mouse.png
│   ├── HDD_vs_SSD.png
│   ├── Int_In_Big_Endian.png
│   ├── Int_In_Little_Endian.png
│   ├── Multithreading.png
│   ├── Number_Into_Binary.png
│   ├── Opening_a_file.png
│   ├── OS_Structure.png
│   ├── Pasted image 20240930215115.png
│   ├── Processor_Back.png
│   ├── Processor_Front.png
│   ├── Screenshot from 2024-09-23 14-42-26 1.png
│   ├── Screenshot from 2024-09-30 17-37-08.png
│   ├── String_To_Symbols.png
│   ├── Symbol_To_ASCII_Values.png
│   ├── System_Call_Interface.png
│   ├── Virtual_Memory.png
│   ├── Virtual_Processor.png
│   └── Writiing_To_A_File.png
├── Labs
│   ├── Week_1
│   │   └── Intro.md
│   └── Week_2
│       ├── Paths.md
│       └── Paths_Task_Group_1.md
├── Lectures
│   ├── Week_1
│   │   └── Intro.md
│   ├── Week_2
│   │   ├── Code
│   │   │   ├── alsr_instruction.md
│   │   │   ├── common.h
│   │   │   ├── common_threads.h
│   │   │   ├── cpu.c
│   │   │   ├── io.c
│   │   │   ├── mem.c
│   │   │   └── thread.c
│   │   ├── Data_In_Memory.md
│   │   └── Whats_is_Operating_System.md
│   └── Week_3
│       └── OS_Components.md
├── LICENSE
└── README.md
```

2. Навигирайте към директорията 'Attachments'. От там изведете съдържанието на файла 'Whats_is_Operating_System.md', без да сменяте директорията. За целта използвайте релативен път.
3. Изведете съдържанието  на  файлът 'Intro.md' от директорията 'Lectures/Week_1'.
4. Върнете се обратно в папката 'operating-systems'. От там навигирайте към директорията 'Labs/Week_1/'. От там покажете детайлите на файлът 'Virtual_Memory.png' (използвайте 'ls -l') от папката 'Attachments' чрез релативен път.
5. Върнете се обратно в папката 'operating-systems'. От там навигирайте към директорията 'Lectures/Week_2/Code/'. От там изведете съдържанието на файлът 'README.md' чрез релативен път.
6. Изведете съдържанието на файлът 'Intro.md' от директорията 'Labs/Week_1/' чрез релативен път.
7. Направете екранна снимка на командите от всяка задача и ги качете.

Команди, които са ви нужни:

1. cd: за навигиране към дадена директория
2. cat: за извеждане на съдържанието на даден файл
3. ls -l: за извеждане на детайли за даден файл или директория
4. pwd: ако трябва да видите в коя директория се намирате в момента
