var:=false
F9::
var:=!var
if(var)
{
    FileSetAttrib, ^H, C:\Users\Администратор\Desktop\*.*, 1
	FileSetAttrib, -H, C:\Users\Администратор\Desktop\ПРИМЕР.txt ; ФАЙЛ КОТОРЫЙ ОСТАНЕТСЯ
} else {
    FileSetAttrib, ^H, C:\Users\Администратор\Desktop\*.*, 1
	FileSetAttrib, -H, C:\Users\Администратор\Desktop\ПРИМЕР.txt ; ФАЙЛ КОТОРЫЙ ОСТАНЕТСЯ
}
return