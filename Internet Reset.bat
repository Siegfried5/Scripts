@echo off
color a
ipconfig /flushdns
ipconfig /release
ipconfig /renew
tracert 8.8.8.8
pause