@echo off&setlocal EnableDelayedExpansion 
set a=10
for /f "delims=" %%i in ('dir /b *.txt') do ( 
if not "%%~ni"=="%~n0" ( 
if !a! LSS 10 (ren "%%i" "result0!a!.txt") else ren "%%i" "result!a!.txt" 
set/a a+=1 
) 
)
