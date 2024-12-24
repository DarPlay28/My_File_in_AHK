{
#Warn
#NoEnv
#SingleInstance force
setworkingdir,%a_scriptdir%
formattime, dait, M/d/yyyy h:mm:ss tt
xx:=100,WA:=A_screenwidth,HA:=A_screenheight, e:="",utf:=""
F1=%A_scriptdir%\1.txt
ifnotexist,%f1%
 gosub,createtestfile
Gui,1: -dpiscale

gx:=(WA*1)//xx,gy:=(ha*1)//xx,gw:=(WA*40)//xx,gh:=(ha*25)//xx

	Gui 1: +LastFound +AlwaysOnTop +ToolWindow -Caption
	Gui 1: Color, 1a0da3
	WinSet, TransColor, 1a0da3 500
	;Gui 1: Font, S16 cRed Q4, Arial Bold
	Gui 1: Font, S22 cBlue , Lucida Console
	Gui 1: add, text,x0 y0 w%gw% h%gh% vDayt Left,
	Gui 1: show,x%gx% y%gy%, My GUI
	SetTimer, Update,2000
return
;-----------------------
Guiclose:
Exitapp
esc::exitapp
;-----------------------
Update:
	Loop 20
	{
		Obj := FileOpen(F1, "r",UTF-8)
		var := Obj.Read()
		Obj.Close()
		GuiControl,1:, Dayt, %Var%
		Sleep 100
	}
	Exitapp
Return
;-----------------------
createtestfile:
  e .= "LOL"
FileOpen(F1, "w", "UTF-8").Write(e)
e=
return 
}