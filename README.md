# Zip_for_wallpaper_engine

[🇨🇳 中文 README](README_CN.md)

## 📌 Overview
**Zip_for_wallpaper_engine** is a tool that disguises ZIP files as MP4 files, allowing them to be uploaded as study materials (for cloud drive storage) to Steam Workshop via the Wallpaper Engine editor.

🔹 **Problem solved:**
Directly renaming a ZIP file to an MP4 extension causes the upload progress to freeze, likely because the editor cannot parse the modified MP4 file and prevents uploading. This project provides a workaround.

## ⚙️ Prerequisites
To use this tool, you need to have **WinRAR** installed. If you don't have it, download it from the official site:
👉 [WinRAR Official Website](https://www.win-rar.com/)

## 📖 Usage

### 🔹 Prepare
1. Download this repository:
   - `zip_for_wpe.bat`
   - `unzip_for_wpe.bat`
   - `mask.mp4` (dummy MP4 file for masking)
2. Modify the `unzip_for_wpe.bat` script and set the correct WinRAR path:
   ```bat
   set WINRAR="C:\Program Files\WinRAR\WinRAR.exe"
   ```

### 🔹 Upload to Steam Workshop
1. Drag the ZIP file you want to upload onto `zip_for_wpe.bat`. This will generate a masked file named `filename_masked.mp4`.
2. This `filename_masked.mp4` file can be opened and parsed as a video, bypassing Wallpaper Engine editor’s restrictions.
3. Upload it to Steam Workshop with the basic details.

### 🔹 Download and Extract Files
1. After subscribing to the item on Steam Workshop, locate the downloaded file in file Explorer.
2. Drag `filename_masked.mp4` onto `unzip_for_wpe.bat` to start the extraction.
