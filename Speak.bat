@echo off
title Speak by:Alex
MODE con: cols=40 lines=20
color 0a
:start
cls
echo.
echo ʹ��˵����
echo.
echo ������Ҫ�õ���˵�Ļ���
echo �������������....
echo.
::echo %~d0
set /p speak= ��������䣺
echo CreateObject("SAPI.SpVoice").Speak "%speak%" > %~d0\speak.vbs
::echo ok
echo.
echo ���ڷ�������������~
%~d0\speak.vbs & del %~d0\speak.vbs
goto start