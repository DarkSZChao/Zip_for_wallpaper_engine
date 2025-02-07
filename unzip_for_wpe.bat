@echo off
setlocal enabledelayedexpansion

:: 检查是否有拖入的文件
if "%~1"=="" (
    echo Drag one MP4 to this BAT script
    pause
    exit
)

:: 设置 WinRAR 路径（如果已添加到环境变量，可忽略）
set WINRAR="C:\Program Files\WinRAR\WinRAR.exe"

:: 修改文件后缀为 .zip
ren "%~1" "%~n1.zip"

:: WinRAR 解压缩 ZIP
%WINRAR% x "%~n1.zip"

:: 解压完成后改回后缀
ren "%~n1.zip" "%~nx1"