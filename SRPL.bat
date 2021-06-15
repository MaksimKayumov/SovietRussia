@echo off
set var=0
set input= 
cls
echo Welcome To The Soviet Russia Programming Language!
echo --------------------------------------------------
:main
echo 1)Make New File
echo 2)Open File
echo 3)Exit Interpreter
set /p command=
if %command% == 1 goto new
if %command% == 2 goto file
if %command% == 3 exit
goto main
:new
echo File Name?
set /p filename=
(
echo 
echo 
echo 
echo 
) >%filename%.sc
exit
:file
echo File Name?
set /p file=
<%file%.sc (
set /p str1=
set /p str2=
set /p str3=
set /p cmnt=
)
goto str3
:str3
if %str3% == OUTPUTS-YOU goto outputsstr21
if %str3% == PRINTS-YOU goto printstr21
if %str3% == ADDING-YOU goto addstr21
if %str3% == SUBSTRACT-YOU goto substr21
goto error
:outputsstr21
if %str1% == InSovietRussia goto outputsstr22
if not %str1% == InSovietRussia goto error
goto error
:outputsstr22
set /p input=%str2%
echo %input%
goto outputsstr22
pause exit
:error
echo ERROR!
goto error
:printstr21
if %str1% == InSovietRussia goto printstr22
if not %str1% == InSovietRussia goto error
goto error
:printstr22
echo %str2%
pause exit
:addstr21
if %str1% == InSovietRussia goto addstr22
if not %str1% == InSovietRussia goto error
goto error
:addstr22
set /a var=%var%+%str2%
echo %var%
 goto addstr21
:substr21
if %str1% == InSovietRussia goto substr22
if not %str1% == InSovietRussia goto error
:substr22
set var=100
set /a var=%var%-%str2%
echo %var%
 goto substr21