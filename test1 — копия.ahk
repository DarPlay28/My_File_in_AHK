#SingleInstance Force
#NoEnv
OnMessage(0x201,"Check_Control")

SetBatchLines -1

way := "data/info.egl"
SetWorkingDir %A_ScriptDir%
IniRead name, %way%, USER, name1
IniRead rank, %way%, USER, rank
IniRead sity, %way%, USER, sity
IniRead structure, %way%, USER, structure
IniRead ydost, %way%, USER, ydost
IniRead srok_d, %way%, USER, srok_d
;Array[1] := IniRead element, %way%, HOTKEY, element

{IniRead savea1, %way%, HOTKEY, savea1
IniRead savea2, %way%, HOTKEY, savea2
IniRead savea3, %way%, HOTKEY, savea3
IniRead savea4, %way%, HOTKEY, savea4
IniRead savea5, %way%, HOTKEY, savea5
IniRead savea6, %way%, HOTKEY, savea6
IniRead savea7, %way%, HOTKEY, savea7
IniRead savea8, %way%, HOTKEY, savea8
IniRead savea9, %way%, HOTKEY, savea9
IniRead savea10, %way%, HOTKEY, savea10
IniRead savea11, %way%, HOTKEY, savea11
IniRead savea12, %way%, HOTKEY, savea12
IniRead savea13, %way%, HOTKEY, savea13
IniRead savea14, %way%, HOTKEY, savea14
IniRead savea15, %way%, HOTKEY, savea15
IniRead savea16, %way%, HOTKEY, savea16
IniRead savea17, %way%, HOTKEY, savea17
IniRead savea18, %way%, HOTKEY, savea18
IniRead savea19, %way%, HOTKEY, savea19
IniRead savea20, %way%, HOTKEY, savea20
IniRead savea21, %way%, HOTKEY, savea21
IniRead savea22, %way%, HOTKEY, savea22
IniRead savea23, %way%, HOTKEY, savea23
IniRead savea24, %way%, HOTKEY, savea24
IniRead savea25, %way%, HOTKEY, savea25
IniRead savea26, %way%, HOTKEY, savea26
IniRead savea27, %way%, HOTKEY, savea27
IniRead savea28, %way%, HOTKEY, savea28
IniRead savea29, %way%, HOTKEY, savea29
IniRead savea30, %way%, HOTKEY, savea30
IniRead savea31, %way%, HOTKEY, savea31
IniRead savea32, %way%, HOTKEY, savea32
IniRead savea33, %way%, HOTKEY, savea33
IniRead savea34, %way%, HOTKEY, savea34
IniRead savea35, %way%, HOTKEY, savea35
}

;###############################:: Нужный бинд можно найти по ключу: BindNumber: Number ::###############################;
;#############################################:: Например: BindNumber: 4 ::#############################################;

Gui Color, White

Gui Add, Edit, x150 y0 w120 h23 vname1, %name%
Gui, Add, DropDownList, x150 y30 w120 vrank1 Choose1, %rank%|Стажёр|Санитар|Фамацевт|Фельдшер|Старший Провизор|Врач-методист|Врач-терапевт|Врач-лаборант|Врач-специалист|Врач-психиатр|Врач-хирург|Зам. глав. Врача|Главный врач|Фед. контролёр
Gui, Add, DropDownList, x150 y60 w120 vsity1 Choose1, %sity%|Горки (ГРК)|Новоросийск (НСК)| Москва (МСК)
Gui, Add, Edit, x150 y90 w120 vstructure1 Number, %structure%
Gui Add, Edit, x150 y120 w120 h23 vydost1 Number, %ydost%
Gui, Add, DateTime, vsrok_d1, %srok_d%

Gui, Add, Button, x3 y180 w100 h23 gRun, &Готово
Gui, Add, Button, x103 y180 w70 h23 gInfo, &Подробнее
Gui, Add, Button, x3 y205 w100 h23 gSaveInfo, &Сохранить
Gui, Add, Button, x103 y205 w70 h23 gRel, &Перезапуск

Gui, font, s8,, Verdana
Gui Add, Text, x5 y2 h23, Имя:
Gui Add, Text, x5 y32 h23, Звание:
Gui Add, Text, x5 y62 h23, Город:
Gui Add, Text, x5 y92 h23, Состав:
Gui Add, Text, x5 y122 h23, Номер удостоверения:
Gui Add, Text, x5 y152 h23, Срок действительности:

Gui Show, xCenter yCenter, Бинд на медики
WinActivate Бинд на медики
Return

;########################################################################################################################;
;########################################################################################################################;

Rel:
	Reload
Return

Info:
	IfWinNotExist ,Подробнее
	{
		Gui 2: +AlwaysOnTop hwndMainWin
		Gui 2: Color, White
		Gui 2: font, s10,, Verdanat
		
		Gui 2: Add, Hotkey, w100 h20 x7 y7 vChosenHotkey1 vsave1 gSav1, %savea1%
		Gui 2: Add, Hotkey, w100 h20 x7 y27 vChosenHotkey2 vsave2 gSav2, %savea2%
		Gui 2: Add, Hotkey, w100 h20 x7 y47 vChosenHotkey3 vsave3 gSav3, %savea3%
		Gui 2: Add, Hotkey, w100 h20 x7 y67 vChosenHotkey4 vsave4 gSav4, %savea4%
		Gui 2: Add, Hotkey, w100 h20 x7 y87 vChosenHotkey5 vsave5 gSav5, %savea5%
		Gui 2: Add, Hotkey, w100 h20 x7 y107 vChosenHotkey6 vsave6 gSav6, %savea6%
		Gui 2: Add, Hotkey, w100 h20 x7 y127 vChosenHotkey7 vsave7 gSav7, %savea7%
		Gui 2: Add, Hotkey, w100 h20 x7 y147 vChosenHotkey8 vsave8 gSav8, %savea8%
		Gui 2: Add, Hotkey, w100 h20 x7 y167 vChosenHotkey9 vsave9 gSav9, %savea9%
		Gui 2: Add, Hotkey, w100 h20 x7 y187 vChosenHotkey10 vsave10 gSav10, %savea10%
		Gui 2: Add, Hotkey, w100 h20 x7 y207 vChosenHotkey11 vsave11 gSav11, %savea11%
		Gui 2: Add, Hotkey, w100 h20 x7 y227 vChosenHotkey12 vsave12 gSav12, %savea12%
		Gui 2: Add, Hotkey, w100 h20 x7 y247 vChosenHotkey13 vsave13 gSav13, %savea13%
		Gui 2: Add, Hotkey, w100 h20 x7 y267 vChosenHotkey14 vsave14 gSav14, %savea14%
		Gui 2: Add, Hotkey, w100 h20 x7 y287 vChosenHotkey15 vsave15 gSav15, %savea15%
		Gui 2: Add, Hotkey, w100 h20 x7 y307 vChosenHotkey16 vsave16 gSav16, %savea16%
		Gui 2: Add, Hotkey, w100 h20 x7 y327 vChosenHotkey17 vsave17 gSav17, %savea17%
		Gui 2: Add, Hotkey, w100 h20 x7 y347 vChosenHotkey18 vsave18 gSav18, %savea18%
		Gui 2: Add, Hotkey, w100 h20 x7 y367 vChosenHotkey19 vsave19 gSav19, %savea19%
		Gui 2: Add, Hotkey, w100 h20 x7 y387 vChosenHotkey20 vsave20 gSav20, %savea20%
		Gui 2: Add, Hotkey, w100 h20 x7 y407 vChosenHotkey21 vsave21 gSav21, %savea21%
		Gui 2: Add, Hotkey, w100 h20 x7 y427 vChosenHotkey22 vsave22 gSav22, %savea22%
		Gui 2: Add, Hotkey, w100 h20 x7 y447 vChosenHotkey23 vsave23 gSav23, %savea23%
		Gui 2: Add, Hotkey, w100 h20 x7 y467 vChosenHotkey24 vsave24 gSav24, %savea24%
		Gui 2: Add, Hotkey, w100 h20 x7 y487 vChosenHotkey25 vsave25 gSav25, %savea25%
		Gui 2: Add, Hotkey, w100 h20 x7 y507 vChosenHotkey26 vsave26 gSav26, %savea26%
		Gui 2: Add, Hotkey, w100 h20 x7 y527 vChosenHotkey27 vsave27 gSav27, %savea27%
		Gui 2: Add, Hotkey, w100 h20 x7 y547 vChosenHotkey28 vsave28 gSav28, %savea28%
		Gui 2: Add, Hotkey, w100 h20 x7 y567 vChosenHotkey29 vsave29 gSav29, %savea29%
		Gui 2: Add, Hotkey, w100 h20 x7 y587 vChosenHotkey30 vsave30 gSav30, %savea30%
		Gui 2: Add, Hotkey, w100 h20 x7 y607 vChosenHotkey31 vsave31 gSav31, %savea31%
		Gui 2: Add, Hotkey, w100 h20 x7 y627 vChosenHotkey32 vsave32 gSav32, %savea32%
		Gui 2: Add, Hotkey, w100 h20 x7 y647 vChosenHotkey33 vsave33 gSav33, %savea33%
		Gui 2: Add, Hotkey, w100 h20 x7 y667 vChosenHotkey34 vsave34 gSav34, %savea34%
		Gui 2: Add, Hotkey, w100 h20 x7 y687 vChosenHotkey35 vsave35 gSav35, %savea35%

		Loop 35
		{
			save%A_Index% := savea%A_Index%
		}

		Loop 35
		{
			Actio%A_Index% := savea%A_Index%
		}

		Gui 2: Add, Button, w100 h23 x7 y707 gSaveBind, Сохранить
		Gui 2: Add, Button, w180 h23 x107 y707 gDefault, По умолчанию
		
		Gui 2: Add, Text, x110 y7, – Часы
		Gui 2: Add, Text, x110 y27, – Удостоверение
		Gui 2: Add, Text, x110 y47, – Приветствие
		Gui 2: Add, Text, x110 y67, – Осмотр
		Gui 2: Add, Text, x110 y87, – Выдать лекарство
		Gui 2: Add, Text, x110 y107, – Осмотреть и зашить рану
		Gui 2: Add, Text, x110 y127, – Дефибриллятор
		Gui 2: Add, Text, x110 y147, – Бинты
		Gui 2: Add, Text, x110 y167, – Носилки
		Gui 2: Add, Text, x110 y187, – Рентген
		Gui 2: Add, Text, x110 y207, – Следы уколов
		Gui 2: Add, Text, x110 y227, – Анализ на наркотики
		Gui 2: Add, Text, x110 y247, – Гипс
		Gui 2: Add, Text, x110 y267, – Клизма
		Gui 2: Add, Text, x110 y287, – Нашатырь
		Gui 2: Add, Text, x110 y307, – Ветрянка
		Gui 2: Add, Text, x110 y327, – Анализ на “COVID-19”
		Gui 2: Add, Text, x110 y347, – Вакцина от “COVID-19”
		Gui 2: Add, Text, x110 y367, – Дежурство (Палата №1)
		Gui 2: Add, Text, x110 y387, – Дежурство (Палата №2)
		Gui 2: Add, Text, x110 y407, – Патруль
		Gui 2: Add, Text, x110 y427, – Разгрузка медикаментов
		Gui 2: Add, Text, x110 y447, – Морг
		Gui 2: Add, Text, x110 y467, – Доклад об учениях
		Gui 2: Add, Text, x110 y487, – Взять документы на проверку
		Gui 2: Add, Text, x110 y507, – Вернуть документы владельцу
		Gui 2: Add, Text, x110 y527, – Выдать медицинскую карту
		Gui 2: Add, Text, x110 y547, – Справка о нетрудоспособности
		Gui 2: Add, Text, x110 y567, – Аппендицит
		Gui 2: Add, Text, x110 y587, – Проверить на алкогольное опьянение
		Gui 2: Add, Text, x110 y607, – Ингаляция
		Gui 2: Add, Text, x110 y627, – Операция (обычная)
		Gui 2: Add, Text, x110 y647, – Сеанс для наркозависимых
		Gui 2: Add, Text, x110 y667, – Поставить капельницу
		Gui 2: Add, Text, x110 y687, – Проверить давление
		
		Gui 2: Show,  x870 yCenter h755, Подробнее
	}
	else
	{
		WinActivate
	}
Return

;########################################################################################################################;
;########################################################################################################################;

Sav1:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio1, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav2:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio2, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav3:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio3, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav4:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio4, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav5:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio5, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav6:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio6, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav7:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio7, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Actio7 := %save7%
GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
Sav8:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio8, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav9:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio9, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav10:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio10, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav11:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio11, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav12:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio12, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav13:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio13, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav14:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio14, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav15:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio15, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav16:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio16, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav17:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio17, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav18:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio18, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav19:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio19, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav20:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio20, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav21:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio21, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav22:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio22, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav23:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio23, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav24:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio24, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav25:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio25, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav26:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio26, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav27:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio27, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav28:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio28, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav29:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio29, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav30:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio30, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav31:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio31, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav32:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio32, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav33:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio33, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav34:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio34, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return
Sav35:
	Hotkey, % PrKey%A_Gui%%A_GuiControl%, Off, UseErrorLevel
	GuiControlGet, Key, %A_Gui%:, %A_GuiControl%
	Hotkey, % PrKey%A_Gui%%A_GuiControl% := Key, Actio35, On, UseErrorLevel
	WinSetTitle, Подробнее, , *Подробнее
Return

;########################################################################################################################;
;########################################################################################################################;

Run:
	GuiControlGet, name1
	GuiControlGet, rank1
	GuiControlGet, sity1
	GuiControlGet, structure1
	GuiControlGet, ydost1
	GuiControlGet, srok_d1
	WinHide Подробнее
	WinHide *Подробнее 
	WinHide Бинд на медики
	WinHide *Бинд на медики
return

Submit_All:
	Gui,2:Submit,NoHide
return

SaveBind:
	IniWrite %save1%, %way%, HOTKEY, savea1
	IniWrite %save2%, %way%, HOTKEY, savea2
	IniWrite %save3%, %way%, HOTKEY, savea3
	IniWrite %save4%, %way%, HOTKEY, savea4
	IniWrite %save5%, %way%, HOTKEY, savea5
	IniWrite %save6%, %way%, HOTKEY, savea6
	IniWrite %save7%, %way%, HOTKEY, savea7
	IniWrite %save8%, %way%, HOTKEY, savea8
	IniWrite %save9%, %way%, HOTKEY, savea9
	IniWrite %save10%, %way%, HOTKEY, savea10
	IniWrite %save11%, %way%, HOTKEY, savea11
	IniWrite %save12%, %way%, HOTKEY, savea12
	IniWrite %save13%, %way%, HOTKEY, savea13
	IniWrite %save14%, %way%, HOTKEY, savea14
	IniWrite %save15%, %way%, HOTKEY, savea15
	IniWrite %save16%, %way%, HOTKEY, savea16
	IniWrite %save17%, %way%, HOTKEY, savea17
	IniWrite %save18%, %way%, HOTKEY, savea18
	IniWrite %save19%, %way%, HOTKEY, savea19
	IniWrite %save20%, %way%, HOTKEY, savea20
	IniWrite %save21%, %way%, HOTKEY, savea21
	IniWrite %save22%, %way%, HOTKEY, savea22
	IniWrite %save23%, %way%, HOTKEY, savea23
	IniWrite %save24%, %way%, HOTKEY, savea24
	IniWrite %save25%, %way%, HOTKEY, savea25
	IniWrite %save26%, %way%, HOTKEY, savea26
	IniWrite %save27%, %way%, HOTKEY, savea27
	IniWrite %save28%, %way%, HOTKEY, savea28
	IniWrite %save29%, %way%, HOTKEY, savea29
	IniWrite %save30%, %way%, HOTKEY, savea30
	IniWrite %save31%, %way%, HOTKEY, savea31
	IniWrite %save32%, %way%, HOTKEY, savea32
	IniWrite %save33%, %way%, HOTKEY, savea33
	IniWrite %save34%, %way%, HOTKEY, savea34
	IniWrite %save35%, %way%, HOTKEY, savea35
	
	WinSetTitle, *Подробнее, , Подробнее
return
Default:
	save1 =!t
	save2 =!y
	save3 =!1
	save4 =!2
	save5 =!3
	save6 =!4
	save7 =!5
	save8 =!6
	save9 =!7
	save10 =!8
	save11 =!9
	save12 =!0
	save13 =!-
	save14 =!e
	save15 =!h
	save16 =!b
	save17 =!v
	save18 =!n
	save19 =!F1
	save20 =!F2
	save21 =!F3
	save22 =!F4
	save23 =!F5
	save24 =!F6
	save25 =!Numpad4
	save26 =!Numpad5
	save27 =!g
	save28 =!l
	save29 =!c
	save30 =!Numpad1
	save31 =!Numpad8
	save32 =!Numpad9
	save33 =!Numpad7
	save34 =!Numpad3
	save35 =!Numpad2
	
	WinSetTitle, Подробнее, , *Подробнее
return
SaveInfo:
	GuiControlGet, name1
	IniWrite %name1%, %way%, USER, name1
	GuiControlGet, rank1
	IniWrite %rank1%, %way%, USER, rank
	GuiControlGet, sity1
	IniWrite %sity1%, %way%, USER, sity
	GuiControlGet, structure1
	IniWrite %structure1%, %way%, USER, structure
	GuiControlGet, ydost1
	IniWrite %ydost1%, %way%, USER, ydost
	GuiControlGet, srok_d1
	IniWrite %srok_d1%, %way%, USER, srok_d
return

;########################################################################################################################;
;########################################################################################################################;

pbind() ; Для уменьшения строк в скрипте в некоторых моментах. Искать по ключу: bindRPRN
{
	bind("/do Рация в левом кармане халата.", 5, 150)
	bind("/me Правой рукой обхватил рацию", 5, 150)
	bind("/do Рация обхвачена рукой.", 5, 150)
	bind("/me Нажал кнопку РТТ", 5, 150)
}

bind(s, b, d)
{
	SendMessage, 0x50,, 0x4190419,, A ; Русская раскладка, есть английская: SendMessage, 0x50,, 0x4090409,, A
	SendInput, {t}
	Sleep %d%
	if (b > 0)
	{
		Send ^%b%
		Sleep %d%
	}
	SendInput, %s%
	Sleep 100
	SendInput,{enter}
	Sleep %d%
}

bindt(s, b, d)
{
	SendMessage, 0x50,, 0x4190419,, A
	SendInput, {t}
	Sleep %d%
	if (b > 0)
	{
		Send ^%b%
		Sleep %d%
	}
	SendInput %s%
	SendInput %A_Hour%:%A_Min%:%A_Sec%
	Sleep 100
	SendInput,{enter}
	Sleep %d%
}

################################:: Дальше идёт текст самого бинда ::##########################################;
;#########################################:: Текст по желанию меняйте на свой ::#########################################;

Actio1: ; BindNumber: 1
	bind("/do На руке позолоченые часы с гравировкой ""Министерство Здравоохранения""", 5, 250)
	bind("/me Взглянул на часы", 5, 250)
	bindt("/do Часы на руке показывают ", 5, 250)
Return
Actio2: ; BindNumber: 2
	bind("Здравия желаю!", 5, 150)
	bind("Я " zvanie " городской больницы " sity " " %name% ".", 5, 150)
	bind("/me Достал с кармана красное удостоверение сотрудника Министерства Здравоохранения", 5, 150)
	bind("/do Удостоверение в руке.", 5, 150)
	bind("/me В раскрытом виде показала удостоверение человеку напротив", 5, 150)
	bind("/me Убрал свое удостоверение обратно в карман.", 5, 150)
	bind("/do Удостоверение в кармане.", 5, 150)
	bind("/do Удостоверение №"  ".", 5, 150)
	bind("/do Удостоверение действительно до Дата принятие.03.24г.", 5, 150)
Return
Actio3: ; BindNumber: 3
	smbind(sdfsdf, sdfsdf, 5, 200)
	bind("Чем могу быть полезен?", 5, 300)
	bind("/do Бейджик " %rank% " " %name% " на груди.", 5, 300)
Return
Actio4: ; BindNumber: 4
	bind("/me Внимательно осмотрел пациента", 5, 300)
	bind("/do Пациент осмотрен.", 5, 300)
	bind("/me поставил пациенту диагноз", 5, 300)
Return
Actio5: ; BindNumber: 5
	bind("/do Через плечо надета мед.сумка.", 5, 300)
	bind("/me Залез рукой в мед.сумку и достал лекарство", 5, 300)
	bind("/me Передал человеку напротив", 5, 300)
Return
Actio6: ; BindNumber: 6
	bind("/me Осмотрел рану больного", 5, 150)
	bind("/do Рана осмотрена.", 5, 150)
	bind("/me Наложил жгут чуть выше раны для остановки кровотечения", 5, 150)
	bind("/do Жгут наложен.", 5, 150)
	bind("/me Вколол обезболивающее", 5, 150)
	bind("/do Обезболивающие действует...", 5, 150)
	bind("/me Обработал рану", 5, 150)
	bind("/do Рана обработана.", 5, 150)
	bind("/me Поставил капельницу", 5, 150)
	bind("/do Капельница поставлена.", 5, 150)
	bind("/me Включил аппарат наркоза", 5, 150)
	bind("/do Аппарат включен.", 5, 150)
	bind("/me Взял иголку с ниткой", 5, 150)
	bind("/do Иголка с ниткой в руках.", 5, 150)
	bind("/me Начал зашивать рану", 5, 150)
	bind("/do Процесс...", 5, 300)
	bind("/do Рана зашита.", 5, 150)
	bind("/me Обработал рану зеленкой", 5, 150)
	bind("/do Рана обработана.", 5, 150)
	bind("/me Перевязал рану бинтом", 5, 150)
	bind("/do Рана перевязана.", 5, 150)
Return
Actio7: ; BindNumber: 7
	bind("/me Взял крем", 5, 300)
	bind("/do Крем в руке.", 5, 300)
	bind("/me Нанёс крем на грудь потерпевшего", 5, 300)
	bind("/me Взял электроды", 5, 300)
	bind("/me Положил электроды на грудь потерпевшего", 5, 300)
	bind("/do Электроды на груди.", 5, 300)
	bind("/me Подал напряжение", 5, 300)
	bind("/do Реанимировал.", 5, 300)
Return
Actio8: ; BindNumber: 8
	bind("/do Бинты готовы и лежат на столе.", 5, 300)
	bind("/me Взял в руки бинт", 5, 300)
	bind("/do Бинт в руках.", 5, 300)
	bind("/me Взял в руки бинт, начал делать спиральнообразные движения вокруг больного места", 5, 300)
	bind("/do Процесс...", 5, 300)
	bind("/do Бинт наложен.", 5, 300)
Return
Actio9: ; BindNumber: 9
	bind("/me Уложил пострадавшего на носилки", 5, 150)
	bind("/do Пострадавший на носилках.", 5, 150)
Return
Actio10: ; BindNumber: 10
	bind("/me Включил ренген аппарат", 5, 150)
	bind("/do Процесс...", 5, 150)
	bind("Ложитесь поудобнее и закройте глаза чтобы не ослепило.", 5, 150)
	bind("/me Надевает маску на пациента", 5, 150)
	bind("/do Процесс...", 5, 150)
	bind("/do Надел защитную маску.", 5, 150)
	bind("/me Начал делать снимок", 5, 150)
	bind("/do Процесс...", 5, 150)
	bind("/me Снимает маску с пациента", 5, 150)
	bind("/do Процесс...", 5, 150)
	bind("/do Снял маску с пациента", 5, 150)
	bind("/me Снимок выходит из аппарата", 5, 150)
	bind("/do Процесс...", 5, 150)
	bind("/do Снимок вышел из аппарата.", 5, 150)
	bind("/do Просматривает снимок.", 5, 150)
	bind("/do Процесс...", 5, 150)
	bind("/try Перелом", 5, 150)
Return
Actio11: ; BindNumber: 11
	bind("/me Внимательно рассматривает руку человека напротив", 5, 150)
	bind("/try Найти следы уколов", 5, 150)
Return
Actio12: ; BindNumber: 12
	bind("Здравствуйте я ваш лечащий врач.", 5, 150)
	bind("Закатайте рукав и дайте свою руку", 5, 150)
	bind("/me Надел перчатки", 5, 150)
	bind("/do Перчатки надеты.", 5, 150)
	bind("/me Достал из мед. сумки жгут и наложил его на среднюю треть руки", 5, 150)
	bind("/do Жгут наложен.", 5, 150)
	bind("Сжимайте и разжимайте кулак", 5, 150)
	bind("/me Намочил ватку спиртом", 5, 150)
	bind("/me Достал шприц с иглой", 5, 150)
	bind("/do Взял иглу и вводит её в вену пациента.", 5, 150)
	bind("Так хорошо,можете разжимать кулак", 5, 150)
	bind("/me Подставил пробирку и снял жгут с руки пациента", 5, 150)
	bind("/do Необходимое количество крови набрано.", 5, 150)
	bind("/me Извлёк иглу из вены и приложил ватку к руке пациента", 5, 150)
	bind("Согните руку в суставе", 5, 150)
	bind("/me Выкинул использованную иглу в урну", 5, 150)
	bind("Ожидайте анализов.", 5, 150)
	bind("/try Найти наркотические вещества в крови у пациента.", 5, 150)
Return
Actio13: ; BindNumber: 13
	bind("/do Гипсовый раствор и ленты готовы и лежат на столе.", 5, 150)
	bind("/me Начал обмакивать ленты в гипсовом растворе", 5, 150)
	bind("/do Ленты намокают в гипсовом растворе.", 5, 150)
	bind("/do Процесс...", 5, 150)
	bind("/do Ленты намочаны в гипсовом растворе.", 5, 150)
	bind("/me Брав поочередно ленты, намоченные в гипсовом растворе, начал делать спиральнообразные движения вокруг больного места", 5, 150)
	bind("/do Процесс...", 5, 150)
	bind("/do Гипс наложен.", 5, 150)
Return
Actio14: ; BindNumber: 14
	bind("/do Все нужные предметы лежат на столе.", 5, 150)
	bind("/me Правой рукой взял все нужные предметы", 5, 150)
	bind("/do Все нужные инструменты в руках.", 5, 150)
	bind("/me Начал подготавливать клизму.", 5, 150)
	bind("/do Процесс... ", 5, 150)
	bind("/do Клизма готова.", 5, 150)
	bind("/me Правой рукой взял трубочку от клизмы и смазал её вазелином", 5, 150)
	bind("/do Трубочка от клизмы в руках и смазана вазелином.", 5, 150)
	bind("Лягте на кушетку и приспустите штаны.", 5, 150)
	bind("Повернитесь на левый бок и согните ноги в коленях прижав их к животу.", 5, 150)
	bind("/me Вставил трубочку от клизмы в анальное отверстие пациенту", 5, 150)
	bind("/do Трубочка в анальном отверстии.", 5, 150)
	bind("/me Правой рукой открыл кранчик", 5, 150)
	bind("/do Из трубочки потекла вода.", 5, 150)
	bind("/do Процесс...", 5, 150)
	bind("Надевайте штаны и бегите в туалет.", 5, 150)
	bind("/me Выкинул использованную клизму в урну", 5, 150)
	bind("/do Клизма в урне.", 5, 150)
Return
Actio15: ; BindNumber: 15
	bind("/do Через плечо надета мед.сумка.", 5, 150)
	bind("/me Залез рукой в мед.сумку и достал пузырёк с нашатырём", 5, 150)
	bind("/do Пузырёк с нашатырём в руках.", 5, 150)
	bind("/me Открывает пузырёк с нашатырём", 5, 150)
	bind("/do Пузырёк открыт.", 5, 150)
	bind("/me Достал рукой из кармана кусочек ватки", 5, 150)
	bind("/do Кусочек ватки и пузырёк с нашатырём в руках.", 5, 150)
	bind("/me Намочил ватку нашатырным спиртом", 5, 150)
	bind("/do Ватка намочена в нашатырке.", 5, 150)
	bind("/me Лёгким движением руки взмахнул рукой перед носом пострадавшего", 5, 150)
	bind("/do Человек в сознании.", 5, 150)
Return
Actio16: ; BindNumber: 16
	bind("/me Внимательно осмотрел пациента", 5, 150)
	bind("/do Пациент осмотрен.", 5, 150)
	bind("/try Найти ветрянку", 5, 150)
Return
Actio17: ; BindNumber: 17
	bind("/me Внимательно осмотрел пациента", 5, 150)
	bind("/do Пациент осмотрен.", 5, 150)
	bind("/me Достал ложечку из кормана", 5, 150)
	bind("/do Ложечка в руках.", 5, 150)
	bind("/me Взял ложечкой слюну у человека напротив", 5, 150)
	bind("/do Ложечка со слюной в руках.", 5, 150)
	bind("/me Поместил ложкой слюну в пробирку", 5, 150)
	bind("/do Пробирка со слюной стоит в приборе.", 5, 150)
	bind("/me Запустил тест на на наличие ""коронавируса""", 5, 150)
	bind("/do Прибор дал показания.", 5, 150)
	bind("/me Взял показания и начал смотреть результаты", 5, 150)
	bind("/try Найти ""коронавирус"" по результатам", 5, 150)
Return
Actio18: ; BindNumber: 18
	bind("/do Через плечо надета мед.сумка.", 5, 150)
	bind("/me Залез рукой в мед.сумку и достал вакцину от ""коронавируса""", 5, 150)
	bind("/do Взял иглу и вводит её в вену пациента.", 5, 150)
	bind("Так хорошо,можете разжимать кулак", 5, 150)
	bind("/me Извлёк иглу из вены и приложил ватку к руке пациента", 5, 150)
	bind("Согните руку в суставе", 5, 150)
	bind("/me Выкинул использованную иглу в урну", 5, 150)
	bind("/do Вакцина от ""короновируса"" введена.", 5, 150)
Return
Actio19: ; BindNumber: 19 bindRPRN
	pbind()
	bindt("ОС | Докладываю. Дежурство - палата №1. Состав:1. Состояние - стабильное. Время: ", 2, 250)
Return
Actio20: ; BindNumber: 20 bindRPRN
	pbind()
	bindt("ОС | Докладываю. Дежурство - палата №2. Состав:1. Состояние - стабильное. Время: ", 2, 250)
Return

bool_var := false

Actio21: ; BindNumber: 21 bindRPRN
	pbind()
	if (bool_var == false)
	{
		bind("ОС | Докладываю. Выезжаю на задание ""Патрулирование.""", 2, 150)
		bool_var := true
	}
	else
	{
		bind("ОС | Докладываю. Патруль-1. Машина: Н001ОК. Состав:2. Выехали(Завершаем патруль):", 2, 250)
		bool_var := false
	}
Return
Actio22: ; BindNumber: 22 bindRPRN
	pbind()
	bind("РС | Приступил к разгрузке медикаментов.Состояние-стабильное.", 2, 250)
Return
Actio23: ; BindNumber: 23 bindRPRN
	pbind()
	bind("ОС | Докладываю. Выезжаю в морг.", 2, 250)
Return
Actio24: ; BindNumber: 24 bindRPRN
	pbind()
	bind("ОС | Докладываю. Выезжаю на учение.", 5, 150)
Return
Actio25: ; BindNumber: 25
	bind("/me Правой рукой взял документы у человека напротив", 5, 150)
	bind("/do Документы в руке.", 5, 150)
	bind("/me Начал изучать документы", 5, 150)
	bind("/do Процесс...", 5, 150)
Return
Actio26: ; BindNumber: 26
	bind("/me Закончил изучать документы человека напротив", 5, 150)
	bind("/do Документы в руке.", 5, 150)
	bind("/me Передал документы обратно гражданину", 5, 150)
	bind("/do Документы переданы.", 5, 150)
Return
Actio27: ; BindNumber: 27
	bind("/me Достал листок и ручку", 5, 150)
	bind("/do Листок и ручка в руках.", 5, 150)
	bind("/me Начал заполнять мед.карту", 5, 150)
	bind("/do Процесс...", 5, 150)
	bind("/do Мед.карта заполненна.", 5, 150)
	bind("/me Достал листок и ручку", 5, 150)
	bind("/do Подпись в Мед.карте.", 5, 150)
	bind("/me Поставил штамп Министерства Здравоохранения", 5, 150)
	bind("/do Штамп Министерства Здравоохранения поставлен.", 5, 150)
Return
Actio28: ; BindNumber: 28
	bind("/me Взял листок", 5, 150)
	bind("/me Взял ручку", 5, 150)
	bind("/do Ручка и листок в руках.", 5, 150)
	bind("/me Пишет справку о нетрудоспособности [1/2]", 5, 150)
	bind("/me Пишет справку о нетрудоспособности [2/2]", 5, 150)
	bind("/do Справка в руках.", 5, 150)
	bind("/me Передал справку", 5, 150)
Return
Actio29: ; BindNumber: 29
	bind("/me Надел перчатки", 5, 150)
	bind("/do Перчатки надеты.", 5, 150)
	bind("/do Маска надета.", 5, 150)
	bind("/me Включил автоматический аппарат анестезии", 5, 150)
	bind("/do Аппарат включен.", 5, 150)
	bind("/me Взял скальпель", 5, 150)
	bind("/do Скальпель в руке.", 5, 150)
	bind("/me Сделал небольшой надрез", 5, 150)
	bind("/do Надрез сделан.", 5, 150)
	bind("/me Положил скальпель", 5, 150)
	bind("/do Скальпель на операционном столе.", 5, 150)
	bind("/me Взял необходимые инструменты", 5, 150)
	bind("/do Необходимые предметы взяты.", 5, 150)
	bind("/me Аккуратно удалил аппендицит", 5, 150)
	bind("/do Аппендицит удален.", 5, 150)
	bind("/me Положил на стол все инструменты", 5, 150)
	bind("/do Инструменты положены на свои места.", 5, 150)
	bind("/me Обработал рану ваткой обмоченной мед.спиртом", 5, 150)
	bind("/do Рана обработана.", 5, 150)
	bind("/me Наложил асептическую повязку.", 5, 150)
	bind("/do Повязка наложена.", 5, 150)
	bind("/me Выключил автоматический аппарат анестезии", 5, 150)
	bind("/do Аппарат выключен.", 5, 150)
	bind("/me Снял маску", 5, 150)
	bind("/do Маска снята.", 5, 150)
	bind("/me Провёл мероприятие по выведению человека из анестезии.", 5, 150)
	bind("/do Человек в сознании.", 5, 150)
Return
Actio30: ; BindNumber: 30
	bind("/do Различные медицинские инструменты в сумке на поясе врача.", 5, 150)
	bind("/me Достал из сумки прибор ""СилаСпирт-1""", 5, 150)
	bind("/do Прибор ""СилаСпирт-1"" в руках.", 5, 150)
	bind("/me Поднёс прибор ""СилаСпирт-1"" к руке человека напротив", 5, 150)
	bind("Сейчас будет немножечко больно, потерпите.", 5, 150)
	bind("/do Из прибора вылезла игла и вонзилась в палец человека, стоящего напротив врача.", 5, 150)
	bind("/do Штырь залез обратно в прибор.", 5, 150)
	bind("/me Убрал прибор от руки человека напротив и нажал кнопку ""АНАЛИЗ""", 5, 150)
	bind("/do Прибор показал результат.", 5, 150)
	bind("/try Найти превышающую дозу алкоголя в крови.", 5, 150)
Return
Actio31: ; BindNumber: 31
	bind("/me Подготовил операционный стол", 5, 150)
	bind("/me Надел стерильные перчатки", 5, 150)
	bind("/me Поставил анестезию человеку напротив", 5, 150)
	bind("/do Человек напротив уснул.", 5, 150)
	bind("/me Обработал рану человеку напротив", 5, 150)
	bind("/do Рана обработана", 5, 150)
	bind("/me Проводит операцию человеку напротив", 5, 150)
	bind("/do Процесс...", 5, 150)
	bind("/me Обработал рану человеку напротив", 5, 150)
	bind("/do Рана обработана.", 5, 150)
	bind("/me Зашил рану человеку напротив", 5, 150)
	bind("/do Рана зашита.", 5, 150)
	bind("/do Человек пришёл в себя после анестезии.", 5, 150)
	bind("Операция прошла успешно,как сможете,вставайте,сильно не напрягайтесь", 5, 150)
Return
Actio32: ; BindNumber: 32
	bind("Здравствуйте, Вы к нам на сеанс от наркозависимости?", 5, 150)
	bind("Присаживайтесь и снимайте всю верхнюю одежду.", 5, 150)
	bind("/me Помыл руки и одел перчатки", 5, 150)
	bind("/do Руки вымыты, перчатки одеты.", 5, 150)
	bind("/me Достал аптечку и открыл её", 5, 150)
	bind("/do Аптечка открыта.", 5, 150)
	bind("/me Достал шприц", 5, 150)
	bind("/do Шприц в руке.", 5, 150)
	bind("/me Протёр ваткой, обмоченной мед.спиртом, место укола", 5, 150)
	bind("/do Место укола продезинфицированно.", 5, 150)
	bind("/do Детоксикация...", 5, 150)
	bind("/me Достал аппарат ""Soft3000""", 5, 150)
	bind("/do Аппарат в руке.", 5, 150)
	bind("/me Поставил капельницу и подключил к ней аппарат", 5, 150)
	bind("/do Очищение крови...", 5, 150)
	bind("/me Выключил аппарат и убрал капельницу", 5, 150)
	bind("Вставайте и одевайтесь.", 5, 150)
	bind("/me Взял таблетки в руку", 5, 150)
	bind("/do Таблетки в руке.", 5, 150)
	bind("/me Передал таблетки человеку на против", 5, 150)
	bind("/do Таблетки переданы.", 5, 150)
	bind("Первый сеанс прошел хорошо, приходите через 2 дня. Всего доброго.", 5, 150)
Return
Actio33: ; BindNumber: 33
	bind("/me Внимательно осмотрел пациента", 5, 150)
	bind("/do Пациент осмотрен.", 5, 150)
	bind("/me Надел маску для ингаляции на пациента", 5, 150)
	bind("/do Маска надета на человека напротив.", 5, 150)
	bind("/me Включил аппарат ингаляции", 5, 150)
	bind("/do Аппарат включен.", 5, 150)
	bind("/me Достал аптечку ", 5, 150)
	bind("/do Аптечка в руках.", 5, 150)
	bind("/me Достал шприц и ампулу с антидотом в руки", 5, 150)
	bind("/do Шприц и ампула в руках.", 5, 150)
	bind("/me Ввёл антидот в шприц", 5, 150)
	bind("/do Антидот введён.", 5, 150)
	bind("/me Взял антисептик из аптечки", 5, 150)
	bind("/do Антисептик в руке.", 5, 150)
	bind("/me Обработал место укола антисептиком", 5, 150)
	bind("/do Место укола обработано.", 5, 150)
	bind("/me Сделал укол пациенту", 5, 150)
	bind("/do Укол сделан.", 5, 150)
	bind("/me Снял маску ингаляции", 5, 150)
	bind("/do Маска снята.", 5, 150)
	bind("/me Выключил аппарат ингаляции", 5, 150)
	bind("/do Аппарат выключен.", 5, 150)
Return
Actio34: ; BindNumber: 34
	bind("/do На плече висит мед.сумка.", 5, 150)
	bind("/me Открыв мед.сумку,достал оттуда тонометр", 5, 150)
	bind("/do Мед.сумка открыта.", 5, 150)
	bind("/do Тонометр в руках.", 5, 150)
	bind("/me Нажал кнопку On", 5, 150)
	bind("/do Тонометр включен. На мониторе надпись ""Hello doctor.""", 5, 150)
	bind("/me Накладывает тонометр выше места сгиба правой руки человека", 5, 150)
	bind("/do Тонометр на правой руке человека.", 5, 150)
	bind("/me Нажал кнопку ""Start""", 5, 150)
	bind("/do Тонометр измеряет давление.", 5, 150)
	bind("/do На мониторе данные результата измерения.", 5, 150)
	bind("/me Внимательно посмотрел на монитор", 5, 150)
	bind("/try Заметил, что давление в норме", 5, 150)
	bind("/me Сняв тонометр с правой руки человека, убрал его в мед.сумку", 5, 150)
Return
Actio35: ; BindNumber: 35
	bind("/do Флакон с физраствором лежит в мед.сумке.", 5, 150)
	bind("/me Взял флакон с физраствором в руки", 5, 150)
	bind("/do Флакон с физраствором в руках.", 5, 150)
	bind("/me Открыл флакон и начал прокалывать иглой резиновую пробку", 5, 150)
	bind("/do Резиновая пробка проколота.", 5, 150)
	bind("/me Начал сжимать каплеобразователь,выдавливая из него воздух внутрь флакона", 5, 150)
	bind("/do Процесс…", 5, 150)
	bind("/do Воздух с каплеобразователя выдавлен во флакон.", 5, 150)
	bind("/me Подвесил флакон с раствором повыше", 5, 150)
	bind("/do Флакон с раствором подвешен.", 5, 150)
	bind("Закатайте рукав и дайте свою руку", 5, 150)
	bind("/me Надел перчатки", 5, 150)
	bind("/do Перчатки надеты.", 5, 150)
	bind("/me Достал из мед. сумки жгут и наложил его на среднюю треть руки", 5, 150)
	bind("/do Жгут наложен.", 5, 150)
	bind("Сжимайте и разжимайте кулак", 5, 150)
	bind("/me Намочил ватку спиртом", 5, 150)
	bind("/me Достал шприц с иглой", 5, 150)
	bind("/do Взял иглу и вводит её в вену пациента.", 5, 150)
	bind("Так хорошо,можете разжимать кулак", 5, 150)
	bind("/me Подставил капельницу и снял жгут с руки пациента", 5, 150)
	bind("/do Процесс…", 5, 150)
	bind("/me Извлёк иглу из вены и приложил ватку к руке пациента", 5, 150)
	bind("Согните руку в суставе", 5, 150)
	bind("/me Выкинул использованную иглу в урну", 5, 150)
	bind("/do Пациент успешно прокапан.", 5, 150)
Return

GuiClose:
	MsgBox, 3, ВНИМАНИЕ, Вы хотите оставить бинд работать в фоновом режиме?`nНесохранённые данные будут удалены
	IfMsgBox Yes
	{
		Gui, 1:Destroy
		drf := true
		Gui, 2:Destroy
	}
	IfMsgBox No
	{
		ExitApp
	}
	IfMsgBox Cancel
	{
		return
	}
return

2GuiClose:
	if (drf = false)
	{
		MsgBox, 3, ВНИМАНИЕ, Вы уверены?`nНесохранённые данные будут удалены
		IfMsgBox Yes
		{
			Gui, 2:Destroy
		}
		IfMsgBox No
		{
			WinActivate Подробнее
		}
		IfMsgBox Cancel
		{
			return
		} 
	}
	else
	{
		drf := false
	}
return

^+1::
	WinHide Подробнее
	WinHide *Подробнее
	bind("Здравствуйте. Я " %zvanie1% " городской больницы " %sity1% " " %name1% ".", 5, 300)
return

^+2::
	WinShow Подробнее
	WinShow *Подробнее
return
еЗдравия желаюеЯ  городской больницы Москва (МСК) .
е/me Достал с кармана красное удостоверение сотрудника Министерства Здравоохраненияе/do Удостоверение в руке.
е/me В раскрытом виде показала удостоверение человеку напротиве/me Убрал свое удостоверение обратно в карман.
е/do Удостоверение в кармане.
е/do Удостоверение №.
е/do Удостоверение действительно до Дата принятие.03.24г.
