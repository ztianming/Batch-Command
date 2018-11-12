@echo off
setlocal enabledelayedexpansion
:这里可以指定添加的后缀名
echo =================================================================
echo                           输入后缀，即可更改文件
echo                           关闭直接X掉就好
echo =================================================================
set /p hz=你输入的后缀是：
set batname=%0


::默认直接在名称后追加后缀
FOR /R %~dp0 %%i IN (*) DO (
if NOT "%%~fi"==%batname% (
ECHO "%%~nxi" TO "%%~nxi.!hz!"
ren "%%~nxi" "%%~nxi.!hz!"
)
)
pause
EXIT

