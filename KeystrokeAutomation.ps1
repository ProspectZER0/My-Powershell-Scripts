start "C:\Program Files\Autodesk\Revit 2023\Revit.exe"
Sleep 10
$wshell = New-Object -ComObject wscript.shell;
$wshell.AppActivate('AutoDesk Licensing')
Sleep 5
$wshell.SendKeys('~')
Sleep 5
$wshell.AppActivate('AutoDesk Licensing')
Sleep 5
$wshell.SendKeys('~')
Sleep 5
$wshell.AppActivate('AutoDesk Licensing')
Sleep 5
$wshell.SendKeys('~')
Sleep 15
$wshell.AppActivate('Privacy Settings')
Sleep 15
$wshell.SendKeys('~')
Sleep 2
Stop-Process -Name "Revit"