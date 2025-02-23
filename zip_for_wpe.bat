@echo off
setlocal enabledelayedexpansion

:: 检查是否有拖入的文件
if "%~1"=="" (
    echo Drag one Folder to this BAT script
    pause
    exit
)

:: 获取文件夹路径和名称
set "FilePath=%~dp1"
set "FileName=%~nx1"

:: 运行 PowerShell 进行压缩
powershell -Command "Compress-Archive -Path '%FileName%' -DestinationPath '%FileName%.zip' -Force"

:: 结合伪装的MP4文件和目标zip
copy /b "%~dp0\mask.mp4" + "%FileName%.zip" "%FileName%_masked.mp4"

:: 删除压缩包
powershell -command "$shell = New-Object -ComObject Shell.Application; $folder = $shell.Namespace(10); Get-ChildItem '%FileName%.zip' | ForEach-Object { $folder.MoveHere($_.FullName) }"