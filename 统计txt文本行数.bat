@echo off
setlocal enabledelayedexpansion
(for /f "delims=" %%a in ('dir /a-d /b *.txt') do (
set n=0
for /f "delims=" %%b in ('type "%%a"') do set /a n+=1
if "%%a" neq "ͳ��.txt" echo,%%a --- !n!
))>"ͳ�Ƹ�txt����.txt"