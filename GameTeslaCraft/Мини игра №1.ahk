#SingleInstance Force
#NoEnv
OnMessage(0x201,"Check_Control")

SetBatchLines -1

One(c, s, txt, en) ; c - чат, s - Sleep (задержка), txt - текст для вывода, en - сокращённо: Enter, то-есть действие после всего остального
{
	Send, %c%
	Sleep 200
	SendInput %txt%
	Sleep %s%
	Send, %en%
}

CommAllPlayer(txt, ListN, i)
{
    Loop, %i%
    {
        Sleep 50
        One("t", 70, txt ListN[A_Index], "{Enter}")
    }
}

Gui Color, White

Gui Add, Edit, x120 y0 w250 h23 vname1,
Gui Add, Edit, x120 y30 w250 h23 vname2,
Gui Add, Edit, x120 y60 w250 h23 vname3,
Gui Add, Edit, x120 y90 w250 h23 vname4,
Gui Add, Edit, x120 y120 w250 h23 vrgname, dar_play2

Gui, Add, Button, x140 y160 w100 h23 gRun, &Готово

Gui Add, Text, x5 y0 h23, Игрок №1:
Gui Add, Text, x5 y30 h23, Игрок №2:
Gui Add, Text, x5 y60 h23, Игрок №3:
Gui Add, Text, x5 y90 h23, Игрок №4:
Gui Add, Text, x5 y120 h23, Название территории:
Gui Show, xCenter yCenter, Игра на четверых
WinActivate Игра на четверых
Return

PlayerInfo[1] := [0, 0] ; 1 - Кол-во попыток в текущем раунде, 2 - Кол-во Побед
PlayerInfo[2] := [0, 0]
PlayerInfo[3] := [0, 0]
PlayerInfo[4] := [0, 0]
SelPlayer = 0
SP = 0

Run:
    Gui, Submit, NoHide ; Сохраняем значения из GUI
	Gui Add, Edit, x250 y90 w250 h23 vname5,
	GuiControl, Hide, name5
Return

F8::
	SendMessage, 0x50,, 0x4090409,, A
    Gui, Submit ; Получаем значения из полей ввода
    players := [name1, name2, name3, name4] ; Создаем массив игроков
    CommAllPlayer("/party Invite ", players, players.MaxIndex()) ; Вызываем функцию
	CommAllPlayer("/rg addmember " rgname " ", players, players.MaxIndex())
Return

F9::
	SendMessage, 0x50,, 0x4090409,, A
	Gui, Submit ; Получаем значения из полей ввода
    players := [name1, name2, name3, name4] ; Создаем массив игроков
    CommAllPlayer("/party Kick", players, players.MaxIndex()) ; Вызываем функцию
	CommAllPlayer("/rg removemember" rgname " ", players, players.MaxIndex())
Return

Numpad1::
	SendMessage, 0x50,, 0x4090409,, A
	Gui, Submit ; Получаем значения из полей ввода
	players := [name1, name2, name3, name4] ; Создаем массив игроков
	One("t", t, "/party Chat " players[1] ", ваш ход" PlayerInfo[SelPlayer, 1], "{Enter}")
	SelPlayer = 1
Return

Numpad2::
	SendMessage, 0x50,, 0x4090409,, A
	Gui, Submit ; Получаем значения из полей ввода
	players := [name1, name2, name3, name4] ; Создаем массив игроков
	One("t", 70, "/party Chat " players[2] ", ваш ход", "{Enter}")
	SelPlayer = 2
Return
Numpad3::
	SendMessage, 0x50,, 0x4090409,, A
	Gui, Submit ; Получаем значения из полей ввода
	players := [name1, name2, name3, name4] ; Создаем массив игроков
	One("t", 70, "/party Chat " players[3] ", ваш ход", "{Enter}")
	SelPlayer = 3
Return

Numpad4::
	SendMessage, 0x50,, 0x4090409,, A
	Gui, Submit ; Получаем значения из полей ввода
	players := [name1, name2, name3, name4] ; Создаем массив игроков
	One("t", 70, "/party Chat " players[4] ", ваш ход", "{Enter}")
	SelPlayer = 4
Return

Numpad5::
	SendMessage, 0x50,, 0x4090409,, A
	Gui, Submit ; Получаем значения из полей ввода
	players := [name1, name2, name3, name4] ; Создаем массив игроков
	if (SelPlayer < 4)
	{
		SelPlayer = SelPlayer + 1
		One("t", 70, "/party Chat " players[SelPlayer] ", ваш ход", "{Enter}")
	}
	else
	{
		SelPlayer = 1
		One("t", 70, "/party Chat " players[SelPlayer] ", ваш ход", "{Enter}")
	}
Return

!Numpad1::
	SendMessage, 0x50,, 0x4090409,, A
	Gui, Submit ; Получаем значения из полей ввода
	SP = 1
	players := [name1, name2, name3, name4] ; Создаем массив игроков
	One("t", 70, "/party Chat У игрока " players[1] " поставлено правильно блоков  из 5", "{Left 5}")
	if (SP == SelPlayer)
	{
		PlayerInfo[SP, 1] = [PlayerInfo[SP, 1] + 1]
	}
Return

!Numpad2::
	SendMessage, 0x50,, 0x4090409,, A
	Gui, Submit ; Получаем значения из полей ввода
	SP = 2
	players := [name1, name2, name3, name4] ; Создаем массив игроков
	One("t", 70, "/party Chat У игрока " players[2] " поставлено правильно блоков  из 5", "{Left 5}")
	if (SP == SelPlayer)
	{
		PlayerInfo[SelPlayer, 1] = [PlayerInfo[SP, 1] + 1]
	}
Return

!Numpad3::
	SendMessage, 0x50,, 0x4090409,, A
	Gui, Submit ; Получаем значения из полей ввода
	SP = 3
	players := [name1, name2, name3, name4] ; Создаем массив игроков
	One("t", 70, "/party Chat У игрока " players[3] " поставлено правильно блоков  из 5", "{Left 5}")
	if (SP == SelPlayer)
	{
		PlayerInfo[SP, 1] = [PlayerInfo[SelPlayer, 1] + 1]
	}
Return

!Numpad4::
	SendMessage, 0x50,, 0x4090409,, A
	Gui, Submit ; Получаем значения из полей ввода
	SP = 4
	players := [name1, name2, name3, name4] ; Создаем массив игроков
	One("t", 70, "/party Chat У игрока " players[4] " поставлено правильно блоков  из 5", "{Left 5}")
	if (SP == SelPlayer)
	{
		PlayerInfo[SelPlayer, 1] = [PlayerInfo[SelPlayer, 1] + 1]
	}
Return

!Numpad5::
	SendMessage, 0x50,, 0x4090409,, A
	Gui, Submit ; Получаем значения из полей ввода
	players := [name1, name2, name3, name4] ; Создаем массив игроков
	One("t", 70, "/party Chat У игрока " players[SelPlayer] " поставлено правильно блоков  из 5", "{Left 5}")
	PlayerInfo[SP, 1] = [PlayerInfo[SP, 1] + 1]
Return

!NumpadEnter::
	SendMessage, 0x50,, 0x4090409,,
	Gui, Submit ; Получаем значения из полей ввода
	players := [name1, name2, name3, name4] ; Создаем массив игроков
	PlayerInfo[SelPlayer, 2] = [PlayerInfo[SelPlayer, 2] + 1]
	One("t", 70, "/party Chat И у нас есть ПОБЕДИТЕЛЬ{!}{!}{!} " players[SelPlayer] " Победил", "{Enter}") ; " со счётом: " PlayerInfo[SelPlayer, 1] " попыток и " PlayerInfo[SelPlayer, 2] " побед"
Return

>!P::
	Pause, On
Return

<!P::
	Pause, Off
Return