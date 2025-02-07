@echo off
setlocal enabledelayedexpansion

:: 检查是否有拖入的文件
if "%~1"=="" (
    echo Drag one MP4 to this BAT script
    pause
    exit
)

:: 结合伪装的MP4文件和目标zip
copy /b mask.mp4 + "%~1" "%~dpn1_masked.mp4"