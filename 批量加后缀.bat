@echo off
setlocal enabledelayedexpansion
:这里可以指定添加的后缀名
set hz=jpg
set batname=%0
echo =================================================================
echo                         输入 HY 为还原后缀 
echo                        否则自动加上jpg后缀
echo                           关闭直接X掉就好
echo =================================================================
set /p a=你输入的是：
if !a!==HY (
echo !a! 文件正在还原
goto :return
)
::默认直接在名称后追加后缀
FOR /R %~dp0 %%i IN (*) DO (
if NOT "%%~fi"==%batname% (
ECHO "%%~nxi" TO "%%~nxi.!hz!"
ren "%%~nxi" "%%~nxi.!hz!"
)
)
pause
EXIT

:return
call :getlen %hz%
FOR /R %~dp0 %%i IN (*) DO (
if NOT "%%~fi"==%batname% (
SET KK=%%~nxi
SET RETUN=!KK:~0,-%getlennum%!
ECHO 正在修改文件 %%~nxi TO !RETUN!
ren "%%~nxi" "!RETUN!"
)
)
pause
exit

:getlen
set getlennum=
set getlenstr=%1
:len
set getlenstr=%getlenstr:~0,-1%
set /a getlennum = %getlennum% + 1 
if defined getlenstr goto len
GOTO :EOF