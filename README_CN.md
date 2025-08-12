# Zip_for_wallpaper_engine

[🇬🇧 English README](README.md)

## 📌 概述
**Zip_for_wallpaper_engine** 是一个可以将 ZIP 文件伪装成 MP4 文件的工具，使其能够通过 Wallpaper Engine 编辑器上传到 Steam 创意工坊。通过 Wallpaper Engine 编辑器里的视频类型上传，可无视其文件大小限制，一次性上传超过1G文件。可用于当作云盘存储学习资料。

🔹 **解决的问题：**
直接将 ZIP 文件改为 MP4 后缀名会导致上传进度条卡死，可能是因为编辑器无法解析修改后的 MP4 文件并阻止上传。本项目提供了一种解决方法。

## ⚙️ 前置条件
使用本工具需要安装 **WinRAR**。如果未安装，可前往官网下载：
👉 [WinRAR 官网](https://www.win-rar.com/)

## 📖 使用方法

### 🔹 准备工作
1. 下载本仓库中的文件：
   - `zip_for_wpe.bat`
   - `unzip_for_wpe.bat`
   - `mask.mp4`（伪装用 MP4 文件）
2. 修改 unzip_for_wpe.bat 脚本，将 WinRAR 路径设置为实际安装路径：
   ```bat
   set WINRAR="C:\Program Files\WinRAR\WinRAR.exe"
   ```

### 🔹 上传到 Steam 创意工坊
1. 将需要上传的 文件夹 或已经打包好的 ZIP文件 拖动到 `zip_for_wpe.bat`。脚本会首先压缩 文件夹 成ZIP文件（如果输入是ZIP文件则跳过），然后生成一个 `文件名_masked.mp4` 伪装文件。
2. 该 `文件名_masked.mp4` 文件可以被解析为视频，从而绕过 Wallpaper Engine 编辑器的限制。
3. 在 Steam 创意工坊填写基本信息并上传。

### 🔹 下载和解压
1. 订阅 Steam 创意工坊中的项目后，在文件管理器中找到下载的文件。
2. 将 `文件名_masked.mp4` 拖动到 `unzip_for_wpe.bat`，即可开始解压缩。
