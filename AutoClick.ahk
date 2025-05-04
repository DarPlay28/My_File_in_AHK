timesleep := 20
my_sleep(a:=0, b:=0)
	{
		Random, pz, a, b
		MouseClick, left
		Sleep pz
		Return
	}

	^`::
		Loop, 3
		{
			my_sleep(20, 20)
		}
	Return

!R::
	Reload
Return