@echo off
title Speak by:Alex
MODE con: cols=40 lines=20
color 0a
:start
cls
echo.
echo 使用说明：
echo.
echo 输入你要让电脑说的话，
echo 请勿输入标点符号....
echo.
::echo %~d0
set /p speak= 请输入语句：
echo CreateObject("SAPI.SpVoice").Speak "%speak%" > %~d0\speak.vbs
::echo ok
echo.
echo 正在发音，请认真听~
%~d0\speak.vbs & del %~d0\speak.vbs
goto start