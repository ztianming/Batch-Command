@echo off
setlocal enabledelayedexpansion
:�������ָ����ӵĺ�׺��
echo =================================================================
echo                           �����׺�����ɸ����ļ�
echo                           �ر�ֱ��X���ͺ�
echo =================================================================
set /p hz=������ĺ�׺�ǣ�
set batname=%0


::Ĭ��ֱ�������ƺ�׷�Ӻ�׺
FOR /R %~dp0 %%i IN (*) DO (
if NOT "%%~fi"==%batname% (
ECHO "%%~nxi" TO "%%~nxi.!hz!"
ren "%%~nxi" "%%~nxi.!hz!"
)
)
pause
EXIT

