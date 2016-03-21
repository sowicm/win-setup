@echo off
rem if not "%1" == "1" (
rem   !setup.bat 1 >>!setup.log
rem   goto :eof
rem )
echo Starting...
rem pause

rem 首次登录后切换到Administrator账户对 C:\Users\Sowicm 执行以下操作
rem ！！！！如果不是首次登录一定要先检查原目录！！！！！
rem ！~主题的同步~！

rem All To C
call :slink C:\__Home E:\__Home
call :slink C:\_Apps  D:\_Apps
call :slink C:\_Games D:\_Games
call :slink C:\_Public E:\_Public
call :slink C:\_Videos E:\_Videos
call :slink C:\_VMs    E:\_VMs
mkdir C:\AppTemp

call :AppDataSync "Roaming\Microsoft\Windows\Libraries"
call :AppDataSync "Roaming\Microsoft\Windows\Start Menu"

rem mklink /h "C:\Windows\System32\Drivers\etc\hosts" "C:\Users\Sowicm\__SowicmSync\WindowsSync\Hosts\hosts"

rem call :HomeSync "Contacts"
rem call :HomeSync "Desktop"
rem call :HomeSync "Documents"
rem call :HomeSync "Favorites"
call :HomeSync "Links"
rem call :HomeSync "Pictures"
rem call :HomeSync "Videos"

pause
goto :eof

:AppDataSync
call :slink "C:\Users\Sowicm\AppData\%~1" "C:\Users\Sowicm\Dropbox\_win\AppDataSync\%~1"
goto :eof

:HomeSync
call :slink "C:\Users\Sowicm\%~1" "C:\Users\Sowicm\Dropbox\_win\HomeSync\%~1"
goto :eof

:ProgramDataSync
call :slink "C:\ProgramData\%~1" "C:\Users\Sowicm\Dropbox\_win\ProgramDataSync\%~1"
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
