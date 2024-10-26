@echo off

chcp 65001 >nul
title passcurator beta
color 0e                                                  
echo P	A	S	S	C	U	R	A	T	O	R   
echo =================================================================================
echo                                version: 0.0.1
echo =================================================================================
echo 1 - Посмотреть список аккаунтов
echo 2 - Добавить аккаунт
echo 0 - Выйти
echo =================================================================================
set /P var= Выберите действие: 
if %var%==1 goto show
if %var%==2 goto add  
if %var%==0 exit

:show
echo СЕРВИС ИМЯ ПОЛЬЗОВАТЕЛЯ ПАРОЛЬ
echo =================================================================================
type passwords.txt
pause
exit

:add 
set /P service= Введите сервис(поставьте '-' если нету.): 
set /P username= Введите имя пользователя: 
set /P password= Введите пароль: 
echo %service% %username% %password% >> passwords.txt
exit
