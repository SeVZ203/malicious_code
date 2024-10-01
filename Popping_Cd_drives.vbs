' WMP의 객체를 생성해서 CD/DVD 드라이브를 제어하려는 목적
Set oWMP = CreateObject("WMPlayer.OCX.7")  ' Windows Media Player 객체 생성
Set colCDROMs = oWMP.cdromCollection       ' CD/DVD 드라이브 컬렉션 가져오기

Do
    If colCDROMs.Count >= 1 Then
        For i = 0 To colCDROMs.Count - 1
            colCDROMs.Item(i).Eject         ' 드라이브 열기
        Next
    End If
    WScript.Sleep 100                       ' 100밀리초 대기
Loop