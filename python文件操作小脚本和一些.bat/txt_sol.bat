@echo off
set num = 0
For /r  . %%i in (*.txt) do (
set /a num += 1
echo %%i
call echo �� %%num%% ���ļ�����ɹ�
ren %%i *.sol) 
echo ��%num%���ļ�������ɹ�
pause>nul
