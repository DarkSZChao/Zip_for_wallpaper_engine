@echo off
setlocal EnableDelayedExpansion

:: 检测是否传入参数
if "%~1"=="" (
    echo Drag one Folder or ZIP to this BAT script
    pause
    exit /b
)

:: 设置 WinRAR 路径（如果已添加到环境变量，可忽略）
set WINRAR="C:\SZC\Programs\WinRAR\WinRAR.exe"

:: 读取文件属性
set "FileAttr=%~a1"
set "FilePath=%~dp1"

:: 判断是否为文件夹
echo %FileAttr% | findstr /B "d" >nul
if not errorlevel 1 (
    echo Folder detected: %~1

    set "FileName=%~nx1"

    :: 压缩 ZIP 文件（覆盖已有 ZIP）
    "%WINRAR%" a -afzip -r "!FileName!.zip" "!FileName!\*"

    :: 结合伪装的MP4文件和目标zip
    copy /b "%~dp0\mask.mp4" + "!FileName!.zip" "!FileName!_masked.mp4"

    :: 删除压缩包
    powershell -command "$shell = New-Object -ComObject Shell.Application; $folder = $shell.Namespace(10); Get-ChildItem '!FileName!.zip' | ForEach-Object { $folder.MoveHere($_.FullName) }"

    exit /b
)

:: 判断是否为ZIP文件
if /I "%~x1"==".zip" (
    echo ZIP detected: %~1

    set "FileName=%~n1"

    :: 结合伪装的MP4文件和目标zip
    copy /b "%~dp0\mask.mp4" + "!FileName!.zip" "!FileName!_masked.mp4"

    :: 删除压缩包
    powershell -command "$shell = New-Object -ComObject Shell.Application; $folder = $shell.Namespace(10); Get-ChildItem '!FileName!.zip' | ForEach-Object { $folder.MoveHere($_.FullName) }"

    exit /b
) else (
    echo Drag one Folder or ZIP to this BAT script, instead of %~1
    pause
    exit /b
)


