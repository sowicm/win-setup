@echo off


mkdir C:\Users\Sowicm\_Downloads
call :Sync "_FileRecv"
rem _MyApps
rem call :Sync "_Pictures"
call :Sync "_Projects"
rem call :Sync "_Workspace"


pause
goto :eof

:Sync
set source=%~1
set target=%source:~1%
call :slink "C:\Users\Sowicm\%source%" "S:\[home]\%target%"
goto :eof

:slink
echo ---------------------------------------
echo %1
echo %2
mkdir %1 1>nul 2>nul
rmdir %1
mklink /j %1 %2
echo ---------------------------------------
goto :eof
