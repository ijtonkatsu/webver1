@echo off
echo Syncing restaurant.html to index.html...
powershell.exe -ExecutionPolicy Bypass -File "%~dp0sync-index.ps1"
pause

