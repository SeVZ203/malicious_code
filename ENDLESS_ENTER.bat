Set wshShell = WScript.CreateObject("WScript.Shell")

' 루프 카운터를 설정
Dim counter
counter = 0

' 무한 루프 대신 카운터를 사용하여 10회 실행 후 종료
Do While counter < 10
    WScript.Sleep 100 ' 100 밀리초 대기
    wshShell.SendKeys "~" ' Alt 키 시뮬레이션
    wshShell.SendKeys "{ENTER}" ' Enter 키 시뮬레이션
    counter = counter + 1 ' 카운터 증가
Loop
