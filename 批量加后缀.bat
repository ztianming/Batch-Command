@echo off
setlocal enabledelayedexpansion
:�������ָ����ӵĺ�׺��
set hz=jpg
set batname=%0
echo =================================================================
echo                         ���� HY Ϊ��ԭ��׺ 
echo                        �����Զ�����jpg��׺
echo                           �ر�ֱ��X���ͺ�
echo =================================================================
set /p a=��������ǣ�
if !a!==HY (
echo !a! �ļ����ڻ�ԭ
goto :return
)
::Ĭ��ֱ�������ƺ�׷�Ӻ�׺
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
ECHO �����޸��ļ� %%~nxi TO !RETUN!
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