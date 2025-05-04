setworkingdir,%a_scriptdir%

One(c, s, txt, en) ; c - чат, s - Sleep (задержка), txt - текст для вывода, en - сокращённо: Enter, то-есть действие после всего остального
{
	Send, %c%
	Sleep 50
	SendInput %txt%
	Sleep %s%
	Send, %en%
}

Two(c, c2, s, txt, en) ; всё тоже самое, только r2 - второе действие вначале
{
	Send, %c%
	Sleep %s%
	Send, %c2%
	Sleep %s%
	SendInput %txt%
	Sleep %s%
	Send, %en%
}

{Insert::
	sleept := 100
	SendMessage, 0x50,, 0x4090409,, A
	One("t", 30, "/market create 30000", "{Enter}")
	Sleep %sleept%
	Send, 1
	One("t", 30, "/market create 30000", "{Enter}")
	Sleep %sleept%
	Send, 2
	One("t", 30, "/market create 30000", "{Enter}")
	Sleep %sleept%
	Send, 3
	One("t", 30, "/market create 30000", "{Enter}")
	Sleep %sleept%
	Send, 4
	One("t", 30, "/market create 30000", "{Enter}")
	Sleep %sleept%
	Send, 5
	One("t", 30, "/market create 30000", "{Enter}")
	Sleep %sleept%
	Send, 6
	One("t", 30, "/market create 30000", "{Enter}")
	Sleep %sleept%
	Send, 7
	One("t", 30, "/market create 30000", "{Enter}")
	Sleep %sleept%
	Send, 8
	One("t", 30, "/market create 30000", "{Enter}")
Return
}
{!Numpad0::
	SendMessage, 0x50,, 0x4090409,, A
	One("t", 30, "/login A1231237$7z", "{Enter}")
Return
}
{Numpad0::
	SendMessage, 0x50,, 0x4090409,, A
	One("t", 30, "/market create 100", "{Enter}")
Return
}
{Numpad1::
	SendMessage, 0x50,, 0x4090409,, A
	One("t", 30, "/money", "{Enter}")
Return
}
{Numpad2::
	SendMessage, 0x50,, 0x4090409,, A
	One("{Home}", 20, "/market create ", "{End}")
Return
}
{Numpad3::
	SendMessage, 0x50,, 0x4090409,, A
	One("{Home}", 20, "/trade ", "{Enter}")
Return
}
{Numpad4::
	SendMessage, 0x50,, 0x4090409,, A
	One("{Home}", 20, "{!}", "{Enter}")
Return
}
{Numpad5::
	SendMessage, 0x50,, 0x4090409,, A
	One("{Home}", 30, "/c ", "{Enter}")
Return
}
{Numpad7::
	SendMessage, 0x50,, 0x4090409,, A
	One("t", 20, "/craft", "{Enter}")
Return
}
{Numpad8::
	SendMessage, 0x50,, 0x4090409,, A
	One("t", 30, "/market", "{Enter}")
Return
}
{Numpad9::
	SendMessage, 0x50,, 0x4090409,, A
	One("t", 30, "/pv", "{Enter}")
Return
}
{!Numpad1::
	SendMessage, 0x50,, 0x4090409,, A
	One("t", 20, "/clan base", "{Enter}")
Return
}
{!Numpad4::
	SendMessage, 0x50,, 0x4090409,, A
	One("t", 20, "/capture", "{Enter}")
Return
}
{!Numpad7::
	SendMessage, 0x50,, 0x4090409,, A
	One("{Home}", 20, "/call ", "{Enter}")
Return
}
{NumpadEnter::
Return
NumpadMult::
Return
}
{NumpadAdd::
	SendMessage, 0x50,, 0x4090409,, A
	One("t", 30, "/clan accept", "{Enter}")
	Sleep 50
	One("t", 30, "/trade accept", "{Enter}")
Return
}
{NumpadSub::
	SendMessage, 0x50,, 0x4090409,, A
	One("t", 30, "/trade deny", "{Enter}")
Return
}
{!NumpadAdd::
	SendMessage, 0x50,, 0x4090409,, A
	One("t", 30, "/tpaccept", "{Enter}")
	Sleep 50
	One("t", 30, "/clan accept", "{Enter}")
	Sleep 50
	One("t", 30, "/trade accept", "{Enter}")
Return
}
{!NumpadSub::
	SendMessage, 0x50,, 0x4090409,, A
	One("t", 30, "/tpdeny", "{Enter}")
Return
}

!R::
	Reload
Return