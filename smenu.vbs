Dim WSHShell
Set WSHShell = WScript.CreateObject("WScript.Shell")
WshShell.SendKeys "^{ESC}"
Set WSHShell = Nothing
WScript.Quit(0)