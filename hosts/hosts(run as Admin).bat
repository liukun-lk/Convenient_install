@echo off
@ipconfig /flushdns

@echo "正在更改 hosts 文件"
@copy /y hosts C:\Windows\system32\drivers\etc\hosts
@echo "hosts 文件已经更改，如果没有更改的请以 管理员身份打开"
pause