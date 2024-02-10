@echo off
powershell -WindowStyle Hidden -command $obj = Add-Type -MemberDefinition '[DllImport(""""user32.dll"""")] public static extern int SendMessage(int hWnd, int hMsg, int wParam, int lParam);' -Name fn -Namespace ns -PassThru; $obj::SendMessage(0xffff, 0x0112, 0xF170, 2)
exit