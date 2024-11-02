@echo off

title passcurator beta
color 0e                                                  
echo P	A	S	S	C	U	R	A	T	O	R   
echo =================================================================================
echo                                version: 0.0.1
echo =================================================================================
echo 1 - Show accounts
echo 2 - Add account
echo 0 - Close
echo =================================================================================
set /P var= Choose action: 
if %var%==1 goto show
if %var%==2 goto add  
if %var%==0 exit

:show
echo SERVICE USERNAME PASSWORD
echo =================================================================================
chcp 65001
type passwords.txt
pause
exit

:add 
set /P service= Enter service(if dont has enter '-'): 
set /P username= Enter username: 
set /P password= Enter password:
chcp 936
echo %service% %username% %password% >> passwords.txt
exit

