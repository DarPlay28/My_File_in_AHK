﻿pbind() ; Для уменьшения строк в скрипте в некоторых моментах
{
	bind("/do Рация в левом кармане халата.", 0, 150)
	bind("/me Правой рукой обхватил рацию", 0, 150)
	bind("/do Рация обхвачена рукой.", 0, 150)
	bind("/me Нажал кнопку РТТ", 0, 150)
}

bind(s, b, d) ; s - Текст, который будет вводится; b - Ctrl + b где b - число; d - время простоя, или Sleep %d%
{
	Send, {t} ; Открытие чата
	Sleep %d% ; Время простоя
	if (b > 0) ; Эмулирует нажатие Ctrl + b где b - число, при условии, что b имеет значение больше 0
	{
		Send,^%b%
		Sleep %d%
	}
	SendInput, %s%
	Sleep 100
	Send, {enter} ; Отправляет сообщение в чат нажатием клавиши "Enter"
	Sleep %d%
}
!=::
	SendMessage, 0x50,, 0x4090409,, A ; Переводит клавиатуру на английскую раскладку; Русская раскладка: SendMessage, 0x50,, 0x4190419,, A; Английская: SendMessage, 0x50,, 0x4090409,, A
	bind("/do На руке золотые часы с гравировкой: ""Министерство Здравоохранения""", 0, 250)
	bind("/me взглянул на часы", 0, 250)
	bind("/do Часы на руке показывают " A_Hour ":" A_Min ":" A_Sec, 0, 250)
Return

!1::
	SendMessage, 0x50,, 0x4090409,, A
	bind("Здравствуйте. Я Звание городской больницы №(1-НСК, 2-ГРК) Имя Фамилия.", 0, 300)
	bind("Чем могу быть полезен?", 0, 300)
	bind("/do Бейджик Звание Имя Фамилия на груди.", 0, 300)
Return

!2::
SendMessage, 0x50,, 0x4090409,, A
	bind("/do Через плечо надета мед.сумка.", 0, 300)
	bind("/me залез рукой в мед.сумку и достал лекарство", 0, 300)
	bind("/me передал человеку напротив", 0, 300)
Return

!3::
	SendMessage, 0x50,, 0x4090409,, A
	bind("/me внимательно осмотрел пациента", 0, 300)
	bind("/do Пациент осмотрен.", 0, 300)
	bind("/me поставил пациенту диагноз", 0, 300)
Return


!4::
	SendMessage, 0x50,, 0x4090409,, A
	bind("/me осмотрел рану больного", 0, 300)
	bind("/do Рана осмотрена.", 0, 300)
	bind("/me наложил жгут чуть выше раны для остановки кровотечения", 0, 300)
	bind("/do Жгут наложен.", 0, 300)
	bind("/me вколол обезболивающее", 0, 300)
	bind("/do Обезболивающие действует...", 0, 300)
	bind("/me обработал рану", 0, 300)
	bind("/do Рана обработана.", 0, 300)
	bind("/me поставил капельницу", 0, 300)
	bind("/do Капельница поставлена.", 0, 300)
	bind("/me включил аппарат наркоза", 0, 300)
	bind("/do Аппарат включен.", 0, 300)
	bind("/me взял иголку с ниткой", 0, 300)
	bind("/do Иголка с ниткой в руках.", 0, 300)
	bind("/me начал зашивать рану", 0, 300)
	bind("/do Процесс...", 0, 300)
	bind("/do Рана зашита.", 0, 300)
	bind("/me обработал рану зеленкой", 0, 300)
	bind("/do Рана обработана.", 0, 300)
	bind("/me перевязал рану бинтом", 0, 300)
	bind("/do Рана перевязана.", 0, 300)
Return

!5::
	SendMessage, 0x50,, 0x4090409,, A
	bind("/me взял крем", 0, 300)
	bind("/do Крем в руке.", 0, 300)
	bind("/me нанёс крем на грудь потерпевшего", 0, 300)
	bind("/do Крем на груди потерпевшего.", 0, 300)
	bind("/me взял электроды", 0, 300)
	bind("/do Электроды в руке.", 0, 300)
	bind("/me положил электроды на грудь потерпевшего", 0, 300)
	bind("/do Электроды на груди.", 0, 300)
	bind("/me подал напряжение", 0, 300)
	bind("/do Реанимировал.", 0, 300)
Return

!6::
	SendMessage, 0x50,, 0x4090409,, A
	bind("/do Бинты готовы и лежат на столе.", 0, 300)
	bind("/me взял в руки бинт", 0, 300)
	bind("/do Бинт в руках.", 0, 300)
	bind("/me взяв в руки бинт, начал делать спиральнообразные движения вокруг больного места", 0, 300)
	bind("/do Процесс...", 0, 300)
	bind("/do Бинт наложен.", 0, 300)
Return

!F1::
	SendMessage, 0x50,, 0x4090409,, A
	pbind()
	bind("ОС | Докладываю. Дежурство - палата №1. Состав:1. Состояние - стабильное. Время:" A_Hour ":" A_Min ":" A_Sec, 4, 300)
Return

!F2::
	SendMessage, 0x50,, 0x4090409,, A
	pbind()
	bind("ОС | Докладываю. Дежурство - палата №2. Состав:1. Состояние - стабильное. Время:" A_Hour ":" A_Min ":" A_Sec, 4, 300)
Return

!F3::
	SendMessage, 0x50,, 0x4090409,, A
	pbind()
	bind("ОС | Докладываю. Патруль-1. Машина: Н001ОК. Состав:2. Выехали(Завершаем патруль):", 4, 300)
Return

!F4::
	SendMessage, 0x50,, 0x4090409,, A
	pbind()
	bind("РС | Приступил к разгрузке медикаментов.Состояние-стабильное.", 4, 300)
Return

!F5::
	SendMessage, 0x50,, 0x4090409,, A
	pbind()
	bind("ОС | Докладываю. Выезжаю в морг.", 4, 300)
Return

!7::
	SendMessage, 0x50,, 0x4090409,, A
	bind("/me уложил пострадавшего на носилки", 0, 300)
	bind("/do Пострадавший на носилках.", 0, 300)
Return

!8::
	SendMessage, 0x50,, 0x4090409,, A
	bind("/me включил ренген аппарат", 0, 300)
	bind("/do Процесс...", 0, 300)
	bind("Ложитесь поудобнее и закройте глаза чтобы не ослепило.", 0, 300)
	bind("/me надевает маску на пациента", 0, 300)
	bind("/do Процесс...", 0, 300)
	bind("/do Надел защитную маску.", 0, 300)
	bind("/me начал делать снимок", 0, 300)
	bind("/do Процесс...", 0, 300)
	bind("/me снимок выходит из аппарата", 0, 300)
	bind("/do Просматривает снимок.", 0, 300)
	bind("/do Снимок вышел из аппарата.", 0, 300)
	bind("/me снимает маску с пациента", 0, 300)
	bind("/do Процесс...", 0, 300)
	bind("/do Снял маску с пациента", 0, 300)
	bind("/do Просматривает снимок.", 0, 300)
	bind("/try перелом", 0, 300)
Return

!9::
	SendMessage, 0x50,, 0x4090409,, A
	bind("/me внимательно рассматривает руку человека напротив", 0, 300)
	bind("/try найти следы уколов", 0, 300)
Return

!0::
	SendMessage, 0x50,, 0x4090409,, A
	bind("Здравствуйте я ваш лечащий врач.", 0, 300)
	bind("Закатайте рукав и дайте свою руку", 0, 300)
	bind("/me надел перчатки", 0, 300)
	bind("/do Перчатки надеты.", 0, 300)
	bind("/me достал из мед. сумки жгут и наложил его на среднюю треть руки", 0, 300)
	bind("/do Жгут наложен.", 0, 300)
	bind("Сжимайте и разжимайте кулак", 0, 300)
	bind("/me намочил ватку спиртом", 0, 300)
	bind("/me достал шприц с иглой", 0, 300)
	bind("/do Взял иглу и вводит её в вену пациента.", 0, 300)
	bind("Так хорошо,можете разжимать кулак", 0, 300)
	bind("/me подставил пробирку и снял жгут с руки пациента", 0, 300)
	bind("/do Необходимое количество крови набрано.", 0, 300)
	bind("/me извлёк иглу из вены и приложил ватку к руке пациента", 0, 300)
	bind("Согните руку в суставе", 0, 300)
	bind("/me выкинул использованную иглу в урну", 0, 300)
	bind("Ожидайте анализов.", 0, 300)
	bind("/try найти наркотические вещества в крови у пациента.", 0, 300)
Return

!-::
	SendMessage, 0x50,, 0x4090409,, A
	bind("/do Гипсовый раствор и ленты готовы и лежат на столе.", 0, 300)
	bind("/me начал обмакивать ленты в гипсовом растворе", 0, 300)
	bind("/do Процесс...", 0, 300)
	bind("/do Ленты намочаны в гипсовом растворе.", 0, 300)
	bind("/me брав поочередно ленты, намоченные в гипсовом растворе, начал делать спиральнообразные движения вокруг больного места", 0, 300)
	bind("/do Процесс...", 0, 300)
	bind("/do Гипс наложен.", 0, 300)
Return

!e::
	SendMessage, 0x50,, 0x4090409,, A
	bind("/do Все нужные предметы лежат на столе.", 0, 300)
	bind("/me правой рукой взял все нужные предметы", 0, 300)
	bind("/do Все нужные инструменты в руках.", 0, 300)
	bind("/me Начал подготавливать клизму.", 0, 300)
	bind("/do Процесс...", 0, 300)
	bind("/do Клизма готова.", 0, 300)
	bind("/me правой рукой взял трубочку от клизмы и смазал её вазелином", 0, 300)
	bind("/do Трубочка от клизмы в руках и смазана вазелином.", 0, 300)
	bind("Лягте на кушетку и приспустите штаны.", 0, 300)
	bind("Повернитесь на левый бок и согните ноги в коленях прижав их к животу.", 0, 300)
	bind("/me вставил трубочку от клизмы в анальное отверстие пациенту", 0, 300)
	bind("/do Трубочка в анальном отверстии.", 0, 300)
	bind("/me правой рукой открыл кранчик", 0, 300)
	bind("/do Из трубочки потекла вода.", 0, 300)
	bind("/do Процесс...", 0, 300)
	bind("/do Клизма пуста.", 0, 300)
	bind("/me вытащил трубочку из анального отверстия", 0, 300)
	bind("Надевайте штаны и бегите в туалет.", 0, 300)
	bind("/me выкинул использованную клизму в урну", 0, 300)
	bind("/do Клизма в урне.", 0, 300)
Return

!h::
	SendMessage, 0x50,, 0x4090409,, A
	bind("/do Через плечо надета мед.сумка.", 0, 300)
	bind("/me залез рукой в мед.сумку и пузырёк с нашатырём", 0, 300)
	bind("/do Пузырёк с нашатырём в руках.", 0, 300)
	bind("/me открыл пузырёк с нашатырём", 0, 300)
	bind("/do Пузырёк открыт.", 0, 300)
	bind("/me достал рукой из кармана кусочек ватки", 0, 300)
	bind("/do Кусочек ватки и пузырёк с нашатырём в руках.", 0, 300)
	bind("/me намочил ватку нашатырным спиртом", 0, 300)
	bind("/do Ватка намочена в нашатырке.", 0, 300)
	bind("/me лёгким движением руки взмахнул рукой перед носом пострадавшего", 0, 300)
	bind("/do Человек в сознании.", 0, 300)
Return

!b::
	SendMessage, 0x50,, 0x4090409,, A
	bind("/me внимательно осмотрел пациента", 0, 300)
	bind("/do Пациент осмотрен.", 0, 300)
	bind("/try найти ветрянку", 0, 300)
return

!v::
	SendMessage, 0x50,, 0x4090409,, A
	bind("/me внимательно осмотрел пациента", 0, 300)
	bind("/do Пациент осмотрен.", 0, 300)
	bind("/me достал ложечку из кормана", 0, 300)
	bind("/do Ложечка в руках.", 0, 300)
	bind("/me взял ложечкой слюну у человека напротив", 0, 300)
	bind("/do Ложечка со слюной в руках.", 0, 300)
	bind("/me поместил ложкой слюну в пробирку", 0, 300)
	bind("/do Пробирка со слюной стоит в приборе.", 0, 300)
	bind("/me запустил тест на на наличие ""коронавируса""", 0, 300)
	bind("/do Прибор дал показания.", 0, 300)
	bind("/me взял показания и начал смотреть результаты", 0, 300)
	bind("/try найти ""коронавируса"" по результатам", 0, 300)
return

!n::
	SendMessage, 0x50,, 0x4090409,, A
	bind("/do Через плечо надета мед.сумка.", 0, 300)
	bind("/me залез рукой в мед.сумку и достал вакцину от коронавируса", 0, 300)
	bind("/do Взял иглу и вводит её в вену пациента.", 0, 300)
	bind("Так хорошо,можете разжимать кулак", 0, 300)
	bind("/me извлёк иглу из вены и приложил ватку к руке пациента", 0, 300)
	bind("Согните руку в суставе", 0, 300)
	bind("/me выкинул использованную иглу в урну", 0, 300)
	bind("/do Вакцина от короновируса введена.", 0, 300)
return

!NumPad4::
	SendMessage, 0x50,, 0x4190419,, A
	bind("/me правой рукой взял документы у человека напротив", 0, 300)
	bind("/do Документы в руке.", 0, 300)
	bind("/me начал изучать документы", 0, 300)
	bind("/do Процесс…", 0, 300)
Return

!Numpad5::
	SendMessage, 0x50,, 0x4190419,, A
	bind("/me закончил изучать документы человека напротив", 0, 300)
	bind("/do Документы в руке.", 0, 300)
	bind("/me передал документы обратно гражданину", 0, 300)
	bind("/do Документы переданы.", 0, 300)
Return

!g::
	SendMessage, 0x50,, 0x4090409,, A
	bind("/me достал листок и ручку", 0, 300)
	bind("/do Листок и ручка в руках.", 0, 300)
	bind("/me начал заполнять мед.карту", 0, 300)
	bind("/do Процесс...", 0, 300)
	bind("/do Мед.карта заполненна.", 0, 300)
	bind("/me расписался", 0, 300)
	bind("/do Подпись в Мед.карте.", 0, 300)
	bind("/me поставил штамп Министерства Здравоохранения", 0, 300)
	bind("/do Штамп Министерства Здравоохранения поставлен.", 0, 300)
	bind("/me выдал мед.карту", 0, 300)
return

!l::
	SendMessage, 0x50,, 0x4090409,, A
	bind("/me взял листок", 0, 300)
	bind("/me взял ручку", 0, 300)
	bind("/do Ручка и листок в руках.", 0, 300)
	bind("/me пишет справку о ""нетрудоспособности"" [1/2]", 0, 300)
	bind("/me пишет справку о ""нетрудоспособности"" [2/2]", 0, 300)
	bind("/do Справка в руках.", 0, 300)
	bind("/me передал справку", 0, 300)
return

!c::
	bind("/me надел перчатки", 0, 300)
	bind("/do Перчатки надеты.", 0, 300)
	bind("/do Маска надета.", 0, 300)
	bind("/me включил автоматический аппарат анестезии", 0, 300)
	bind("/do Аппарат включен.", 0, 300)
	bind("/me взял скальпель", 0, 300)
	bind("/do Скальпель в руке.", 0, 300)
	bind("/me сделал небольшой надрез", 0, 300)
	bind("/do Надрез сделан.", 0, 300)
	bind("/me положил скальпель", 0, 300)
	bind("/do Скальпель на операционном столе.", 0, 300)
	bind("/me взял необходимые инструменты", 0, 300)
	bind("/do Необходимые предметы взяты.", 0, 300)
	bind("/me аккуратно удалил аппендицит", 0, 300)
	bind("/do Аппендицит удален.", 0, 300)
	bind("/me положил на стол все инструменты", 0, 300)
	bind("/do Инструменты положены на свои места.", 0, 300)
	bind("/me обработал рану ваткой обмоченной мед.спиртом", 0, 300)
	bind("/do Рана обработана.", 0, 300)
	bind("/me наложил асептическую повязку.", 0, 300)
	bind("/do Повязка наложена.", 0, 300)
	bind("/me выключил автоматический аппарат анестезии", 0, 300)
	bind("/do Аппарат выключен.", 0, 300)
	bind("/me снял маску", 0, 300)
	bind("/do Маска снята.", 0, 300)
	bind("/me провёл мероприятие по выведению человека из анестезии.", 0, 300)
	bind("/do Человек в сознании.", 0, 300)
Return

!Numpad9::
	SendMessage, 0x50,, 0x4190419,, A
	bind("/me подготовил операционный стол", 0, 300)
	bind("/me надел стерильные перчатки", 0, 300)
	bind("/me поставил анестезию человеку напротив", 0, 300)
	bind("/do Человек напротив уснул.", 0, 300)
	bind("/me обработал рану человеку напротив", 0, 300)
	bind("/do Рана обработана", 0, 300)
	bind("/me проводит операцию человеку напротив", 0, 300)
	bind("/do Процесс…", 0, 300)
	bind("/me обработал рану человеку напротив", 0, 300)
	bind("/do Рана обработана.", 0, 300)
	bind("/me зашил рану человеку напротив", 0, 300)
	bind("/do Рана зашита.", 0, 300)
	bind("/do Человек пришёл в себя после анестезии.", 0, 300)
	bind("Операция прошла успешно,как сможете,вставайте,сильно не напрягайтесь", 0, 300)
return

!Numpad1::
	SendMessage, 0x50,, 0x4190419,, A
	bind("/do Различные медицинские инструменты в сумке на поясе врача.", 0, 300)
	bind("/me достал из сумки прибор ""СилаСпирт-1""", 0, 300)
	bind("/do Прибор ""СилаСпирт-1"" в руках.", 0, 300)
	bind("/me поднёс прибор ""СилаСпирт-1"" к руке человека напротив", 0, 300)
	bind("Сейчас будет немножечко больно, потерпите.", 0, 300)
	bind("/do Из прибора вылез игла и вонзилась в палец человека, стоящего напротив врача.", 0, 300)
	bind("/do Штырь залез обратно в прибор.", 0, 300)
	bind("/me убрал прибор от руки человека напротив и нажал кнопку ""АНАЛИЗ""", 0, 300)
	bind("/do Прибор показал результат.", 0, 300)
	bind("/try найти превышающую дозу алкоголя в крови.", 0, 300)
return

!numpad8::
	SendMessage, 0x50,, 0x4190419,, A
	bind("/me внимательно осмотрел пациента", 0, 300)
	bind("/do Пациент осмотрен.", 0, 300)
	bind("/me надел маску для ингаляции на пациента", 0, 300)
	bind("/do Маска надета на человека напротив.", 0, 300)
	bind("/me включил аппарат ингаляции", 0, 300)
	bind("/do Аппарат включен.", 0, 300)
	bind("/me достал аптечку", 0, 300)
	bind("/do Аптечка в руках.", 0, 300)
	bind("/me достал шприц и ампулу с антидотом в руки", 0, 300)
	bind("/do Шприц и ампула в руках.", 0, 300)
	bind("/me ввёл антидот в шприц", 0, 300)
	bind("/do Антидот введён.", 0, 300)
	bind("/me взял антисептик из аптечки", 0, 300)
	bind("/do Антисептик в руке.", 0, 300)
	bind("/me обработал место укола антисептиком", 0, 300)
	bind("/do Место укола обработано.", 0, 300)
	bind("/me сделал укол пациенту", 0, 300)
	bind("/do Укол сделан.", 0, 300)
	bind("/me снял маску ингаляции", 0, 300)
	bind("/do Маска снята.", 0, 300)
	bind("/me выключил аппарат ингаляции", 0, 300)
	bind("/do Аппарат выключен.", 0, 300)
return

!Numpad7::
	SendMessage, 0x50,, 0x4190419,, A
	bind("Здравствуйте, Вы к нам на сеанс от наркозависимости?", 0, 300)
	bind("Присаживайтесь и снимайте всю верхнюю одежду.", 0, 300)
	bind("/me помыл руки и одел перчатки", 0, 300)
	bind("/do Руки вымыты, перчатки одеты.", 0, 300)
	bind("/me достал аптечку и открыл её", 0, 300)
	bind("/do Аптечка открыта.", 0, 300)
	bind("/me достал шприц", 0, 300)
	bind("/do Шприц в руке.", 0, 300)
	bind("/me протёр ваткой, обмоченной мед.спиртом, место укола", 0, 300)
	bind("/do Место укола продезинфицированно.", 0, 300)
	bind("/do Детоксикация...", 0, 300)
	bind("/me достал аппарат ""Soft3000""", 0, 300)
	bind("/do Аппарат в руке.", 0, 300)
	bind("/me поставил капельницу и подключил к ней аппарат", 0, 300)
	bind("/do Очищение крови...", 0, 300)
	bind("/me выключил аппарат и убрал капельницу", 0, 300)
	bind("Вставайте и одевайтесь.", 0, 300)
	bind("/me взял таблетки в руку", 0, 300)
	bind("/do Таблетки в руке.", 0, 300)
	bind("/me передал таблетки человеку на против", 0, 300)
	bind("/do Таблетки переданы.", 0, 300)
	bind("Первый сеанс прошел хорошо, приходите через 2 дня. Всего доброго.", 0, 300)
return

!numpad2::
	SendMessage, 0x50,, 0x4190419,, A
	bind("/do На плече висит мед.сумка.", 0, 300)
	bind("/me открыв мед.сумку,достал оттуда тонометр", 0, 300)
	bind("/do  Мед.сумка открыта.", 0, 300)
	bind("/do Тонометр в руках.", 0, 300)
	bind("/me нажал кнопку ""On""", 0, 300)
	bind("/do Тонометр включен. На мониторе надпись ""Hello doctor"".", 0, 300)
	bind("/me накладывает тонометр выше места сгиба правой руки человека", 0, 300)
	bind("/do Тонометр на правой руке человека.", 0, 300)
	bind("/me нажал кнопку ""Start""", 0, 300)
	bind("/do Тонометр измеряет давление.", 0, 300)
	bind("/do На мониторе данные результата измерения.", 0, 300)
	bind("/me внимательно посмотрел на монитор", 0, 300)
	bind("/try заметил, что давление в норме", 0, 300)
	bind("/me сняв тонометр с правой руки человека, убрал его в мед.сумку", 0, 300)
Return

!Numpad3::
	SendMessage, 0x50,, 0x4090409,, A
	bind("/do Флакон с физраствором лежит в мед.сумке.", 0, 300)
	bind("/me взял флакон с физраствором в руки", 0, 300)
	bind("/do Флакон с физраствором в руках.", 0, 300)
	bind("/me открыл флакон и начал прокалывать иглой резиновую пробку", 0, 300)
	bind("/do Резиновая пробка проколота.", 0, 300)
	bind("/me начал сжимать каплеобразователь,выдавливая из него воздух внутрь флакона", 0, 300)
	bind("/do Процесс…", 0, 300)
	bind("/do Воздух с каплеобразователя выдавлен во флакон.", 0, 300)
	bind("/me подвесил флакон с раствором повыше", 0, 300)
	bind("/do Флакон с раствором подвешен.", 0, 300)
	bind("Закатайте рукав и дайте свою руку", 0, 300)
	bind("/me надел перчатки", 0, 300)
	bind("/do Перчатки надеты.", 0, 300)
	bind("/me достал из мед. сумки жгут и наложил его на среднюю треть руки", 0, 300)
	bind("/do Жгут наложен.", 0, 300)
	bind("Сжимайте и разжимайте кулак", 0, 300)
	bind("/me намочил ватку спиртом", 0, 300)
	bind("/me достал шприц с иглой", 0, 300)
	bind("/do Взял иглу и вводит её в вену пациента.", 0, 300)
	bind("Так хорошо,можете разжимать кулак", 0, 300)
	bind("/me подставил капельницу и снял жгут с руки пациента", 0, 300)
	bind("/do Процесс…", 0, 300)
	bind("/me извлёк иглу из вены и приложил ватку к руке пациента", 0, 300)
	bind("Согните руку в суставе", 0, 300)
	bind("/me выкинул использованную иглу в урну", 0, 300)
	bind("/do Пациент успешно прокапан.", 0, 300)
Return

!y::
	SendMessage, 0x50,, 0x4190419,, A
	bind("Здравия желаю!", 0, 300)
	bind("Санитар г.Новороссийска Данид Романов.", 0, 300)
	bind("/me достал с кармана красное удостоверение сотрудника Министерства Здравоохранения", 0, 300)
	bind("/do Удостоверение в руке.", 0, 300)
	bind("/me в раскрытом виде показала удостоверение человеку напротив", 0, 300)
	bind("/me убрал свое удостоверение обратно в карман.", 0, 300)
	bind("/do Удостоверение в кармане.", 0, 300)
	bind("/do Удостоверение №155085.", 0, 300)
	bind("/do Удостоверение действительно до Дата принятие.03.24г.", 0, 300)
Return

!F6::
	SendMessage, 0x50,, 0x4190419,, A
	pbind()
	bind("ОС | Докладываю. Выезжаю на учение.", 4, 300)
Return

!F7::
	SendMessage, 0x50,, 0x4190419,, A
	pbind()
	bind("ОС | Докладываю. Приступаю к выполнению операции.Оперблок №1.Состояние стабильное.", 4, 300)
Return

!F8::
	SendMessage, 0x50,, 0x4190419,, A
	pbind()
	bind("ОС | Докладываю. Выезжаю на задание ""Патрулирование"".", 4, 300)
Return
