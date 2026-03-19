@echo off
chcp 65001 >nul
setlocal
set DIR=%~dp0
start "" "%DIR%qrcode-generator.html"
echo 已为你打开二维码生成器。
echo 接下来请在浏览器中填写 GitHub 用户名和仓库名，然后生成二维码海报。
pause
