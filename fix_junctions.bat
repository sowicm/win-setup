@echo off

rem Default User Junctions
call :slink "C:\Users\Sowicm\Application Data" "C:\Users\Sowicm\AppData\Roaming"
call :slink "C:\Users\Sowicm\Cookies" "C:\Users\Sowicm\AppData\Roaming\Microsoft\Windows\Cookies"
call :slink "C:\Users\Sowicm\Local Settings" "C:\Users\Sowicm\AppData\Local"
call :slink "C:\Users\Sowicm\My Documents" "C:\Users\Sowicm\Documents"
call :slink "C:\Users\Sowicm\NetHood" "C:\Users\Sowicm\AppData\Roaming\Microsoft\Windows\Network Shortcuts"
call :slink "C:\Users\Sowicm\PrintHood" "C:\Users\Sowicm\AppData\Roaming\Microsoft\Windows\Printer Shortcuts"
call :slink "C:\Users\Sowicm\Recent" "C:\Users\Sowicm\AppData\Roaming\Microsoft\Windows\Recent"
call :slink "C:\Users\Sowicm\SendTo" "C:\Users\Sowicm\AppData\Roaming\Microsoft\Windows\SendTo"
call :slink "C:\Users\Sowicm\Templates" "C:\Users\Sowicm\AppData\Roaming\Microsoft\Windows\Templates"
call :slink "C:\Users\Sowicm\Start Menu" "C:\Users\Sowicm\Appdata\Roaming\Microsoft\Windows\Start Menu"
call :slink "C:\Users\Sowicm\AppData\Local\Application Data" "C:\Users\Sowicm\AppData\Roaming"
call :slink "C:\Users\Sowicm\AppData\Local\History" "C:\Users\Sowicm\AppData\Local\Microsoft\Windows\History"
call :slink "C:\Users\Sowicm\AppData\Local\Temporary Internet Files" "C:\Users\Sowicm\AppData\Local\Microsoft\Windows\Temporary Internet Files"
