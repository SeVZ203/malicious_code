@echo off
 :: BatchGotAdmin
 :-------------------------------------
 REM  --> Check for permissions
 >nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
 if '%errorlevel%' NEQ '0' (
     echo Requesting administrative privileges...
     goto UACPrompt
 ) else ( goto gotAdmin )

:UACPrompt
     echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
     echo UAC.ShellExecute "%~s0", "", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
     exit /B

:gotAdmin
     if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
     pushd "%CD%"
     CD /D "%~dp0"
:--------------------------------------------------------------------------------------------------
:start
title HAHACLIENT
color 0a
echo HAHA CLIENT
echo haha client는 도배 / 사이트의 핑, ip 확인 기능을 제공합니다.
echo haha client는 관리자만이 사용이 가능합니다.
echo haha client를 사용하려면 관리자 비밀번호를 입력하세요.

set /p password=패스워드 : 
if %password%==AhYRYyFj7YaqEr4TY goto case2

:case1
cls
echo 패스워드가 일치하지 않습니다. 패스워드를 다시 확인하여주세요.
cls
goto start

:case2
cls
echo 패스워드가 일치합니다.
echo 클라이언트 암호화를 해제합니다.
cls
cd..
cd..
tree
pause
cls
title HAHAClient
color 08
echo HAHA CLIENT
echo haha client는 도배 / 사이트의 핑, ip 확인 기능을 제공합니다.
echo 리스트 : 도배 / 사이트의 핑 IP 확인
echo 도배를 선택하려면 1을, 사이트의 IP와 핑을 확인하려면 2를 입력하세요.

set /p YN=입력 : 

if /i "%YN%" == "1" goto dobae
if /i "%YN%" == "2" goto ip

:dobae
cd C:\Users%username%\AppData
md HAHAClient
cd HAHAClient
powershell -Command "Invoke-Webrequest" "https://github.com/eid129121/Doabe/raw/main/Dobae.zip" -outfile "Dobae.zip"
powershell expand-archive C:\Users%username%\AppData\HAHAClient\Dobae.zip C:\Users%username%\AppData\HAHAClient
cd Dobae
cd Release
timeout 3 > nul
start Dobae.exe

:ip
set /p ip=ip 입력: 
ping %ip%