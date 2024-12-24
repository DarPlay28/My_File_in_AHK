
x1 = 700 ; сюда вводить задержку в миллисекундах (1000 млс = 1 сек) между вводом команд
x2 = 30 ; Тоже самое, только между вводом команды и нажатием Enter (Увеличивать, если не успевает вводиться текст)
One(c, s, txt, en) ; c - чат, s - Sleep (задержка), txt - текст для вывода, en - сокращённо: Enter, то-есть действие после всего остального
{
	Send, %c%
	Sleep 50
	SendInput /enchant %txt%
	Sleep %s%
	Send, %en%
}

Numpad1:: ; Здесь можно комбинацию клавиш поменять (смотреть на сайте: https://ahk-wiki.ru/keylist и https://ahk-wiki.ru/hotkeys)
	SendMessage, 0x50,, 0x4090409,, A
	One("t", 30, "0 4", "{Enter}")
	Sleep x1
	One("t", 30, "1 4", "{Enter}")
	Sleep x1
	One("t", 30, "3 4", "{Enter}")
	Sleep x1
	One("t", 30, "4 4", "{Enter}")
	Sleep x1
	One("t", 30, "7 3", "{Enter}")
	Sleep x1
	One("t", 30, "5 3", "{Enter}")
	Sleep x1
	One("t", 30, "6 1", "{Enter}")
	Sleep x1
	One("t", 30, "70 3", "{Enter}")
	Sleep x1
	One("t", 30, "34 3", "{Enter}")
Return

Numpad2:: ; Тоже самое, что и в первом
	SendMessage, 0x50,, 0x4090409,, A
	One("t", 30, "0 4", "{Enter}")
	Sleep x1
	One("t", 30, "1 4", "{Enter}")
	Sleep x1
	One("t", 30, "3 4", "{Enter}")
	Sleep x1
	One("t", 30, "4 4", "{Enter}")
	Sleep x1
	One("t", 30, "7 3", "{Enter}")
	Sleep x1
	One("t", 30, "5 3", "{Enter}")
	Sleep x1
	One("t", 30, "6 1", "{Enter}")
	Sleep x1
	One("t", 30, "70 3", "{Enter}")
	Sleep x1
	One("t", 30, "34 3", "{Enter}")
	Sleep x1
	One("t", 30, "2 2", "{Enter}")
	Sleep x1
	One("t", 30, "8 7", "{Enter}")
	Sleep x1
	One("t", 30, "9 25", "{Enter}")
Return

; Сделано Dar_Play28 для апельсина