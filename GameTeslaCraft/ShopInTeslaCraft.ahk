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

{Numpad1::
	SendMessage, 0x50,, 0x4090409,, A
	One("t", 30, "/Region list", "{Enter}")
	Sleep 50
	One("t", 30, "/Fr List", "{Enter}")
	Sleep 50
	One("t", 30, "/Home list", "{Enter}")
	Sleep 50
	One("t", 30, "/TCA Check", "{Enter}")
	Sleep 50
	One("t", 30, "/money", "{Enter}")
Return
}
{Numpad2::
	SendMessage, 0x50,, 0x4090409,, A
	Two("{Home}", "{Delete 2}", 20, "/TCA Transfer", "{End}")
Return
}
{Numpad3::
	SendMessage, 0x50,, 0x4090409,, A
	Two("{Home}", "{Delete 2}", 20, "/pay", "{End}")
Return
}
{Numpad4::
	SendMessage, 0x50,, 0x4090409,, A
	One("{Home}", 20, "{!}", "{Enter}")
Return
}
{Numpad5::
	SendMessage, 0x50,, 0x4090409,, A
	One("{Home}", 20, "/Clan Chat ", "{Enter}")
Return
}
{Numpad6::
	SendMessage, 0x50,, 0x4090409,, A
	One("{Home}", 20, "/Fr Notify ", "{Enter}")
Return
}
{Numpad7::
	SendMessage, 0x50,, 0x4090409,, A
	One("t", 20, "/top", "{Enter}")
Return
}
{Numpad8::
	SendMessage, 0x50,, 0x4090409,, A
	One("t", 20, "/god", "{Enter}")
Return
}
{Numpad9::
	SendMessage, 0x50,, 0x4090409,, A
	One("t", 20, "/fly", "{Enter}")
Return
}
{!Numpad1::
	SendMessage, 0x50,, 0x4090409,, A
	One("t", 20, "/warp doma build", "{Enter}")
Return
}
{!Numpad3::
	SendMessage, 0x50,, 0x4090409,, A
	One("t", 20, "/home", "{Enter}")
Return
}
{!Numpad4::
	SendMessage, 0x50,, 0x4090409,, A
	One("t", 20, "/Swarp Les", "{Enter}")
Return
}
{!Numpad5::
	SendMessage, 0x50,, 0x4090409,, A
	One("t", 20, "/warp 1/7", "{Enter}")
Return
}
{!Numpad6::
	SendMessage, 0x50,, 0x4090409,, A
	One("t", 20, "/warp japanshop", "{Enter}")
Return
}
{!Numpad7::
	SendMessage, 0x50,, 0x4090409,, A
	Two("{Home}", "{Delete 2}", 20, "/tpa", "{Enter}")
Return
}
{!Numpad8::
	SendMessage, 0x50,, 0x4090409,, A
	Two("{Home}", "{Delete 2}", 20, "/tpahere", "{Enter}")
Return
}
{NumpadEnter::
	SendMessage, 0x50,, 0x4090409,, A
	Send {Enter}
	Sleep 30
	One("t", 20, "/Confirm", "{Enter}")
	Sleep 30
	One("t", 20, "/Pay Confirm", "{Enter}")
Return
}
{NumpadMult::
	SendMessage, 0x50,, 0x4090409,, A
	One("t", 20, "/Day", "{Enter}")
	Sleep 30
	One("t", 20, "/Sun", "{Enter}")
Return
}
{NumpadAdd::
	SendMessage, 0x50,, 0x4090409,, A
	One("t", 20, "/TpAccept", "{Enter}")
	Sleep 30
	One("t", 20, "/rg accept", "{Enter}")
Return
}
{NumpadSub::
	SendMessage, 0x50,, 0x4090409,, A
	One("{Home}", 20, "/Answ ", "{Enter}")
Return
}
!1::
	SetTitleMatchMode, 2
	DetectHiddenWindows, On
	IniWrite gey, %A_WorkingDir%\1.txt, A, 
	Run, %A_WorkingDir%\Script1.ahk