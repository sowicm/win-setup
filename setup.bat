@echo off
rem if not "%1" == "1" (
rem   setup.bat 1 >>setup.log
rem   goto :eof
rem )
echo Starting...
rem pause

rem 首次登录后切换到Administrator账户对 C:\Users\Sowicm 执行以下操作
rem ！！！！如果不是首次登录一定要先检查原目录！！！！！
rem ！~主题的同步~！

rem call :AppDataSync "Local\ESET\ESET Smart Security\Quarantine"
rem call :AppDataSync "Local\Google\Chrome\User Data"
rem call :AppDataSync "Local\Microsoft\MSBuild"
rem call :AppDataSync "Local\Microsoft\Windows\WinX"

call :AppDataSync "Roaming\.emacs.d"
call :AppDataSync "Roaming\Cubium"
call :AppDataSync "Roaming\Everything"
call :AppDataSync "Roaming\Fetion"
call :AppDataSync "Roaming\full phat"
call :AppDataSync "Roaming\IDM"
call :AppDataSync "Roaming\IOBit"
call :AppDataSync "Roaming\KuGou8"
call :AppDataSync "Roaming\Microsoft\Sticky Notes"
call :AppDataSync "Roaming\MilkShape 3D 1.x.x"
call :AppDataSync "Roaming\MotioninJoy"
call :AppDataSync "Roaming\Mount&Blade Warband"
call :AppDataSync "Roaming\Mount&Blade With Fire and Sword"
call :AppDataSync "Roaming\Mozilla\Firefox"
call :AppDataSync "Roaming\PlayFirst"
call :AppDataSync "Roaming\Process Hacker 2"
call :AppDataSync "Roaming\Rainmeter"
call :AppDataSync "Roaming\Sahmon Games"
call :AppDataSync "Roaming\Scooter Software\Beyond Compare 3"
call :AppDataSync "Roaming\Skype"
call :AppDataSync "Roaming\SPlayer"
call :AppDataSync "Roaming\Sublime Text 2"
call :AppDataSync "Roaming\Subversion"
call :AppDataSync "Roaming\Tencent\QQMusic\UserData"
call :AppDataSync "Roaming\Tencent\Users"
call :AppDataSync "Roaming\Thunderbird"
call :AppDataSync "Roaming\uTorrent"
call :AppDataSync "Roaming\Windows Live Writer"

rem HomeSync

call :HomeSync "Contacts"
call :HomeSync "Documents"
call :slink "C:\Users\Sowicm\Downloads" "C:\Users\Sowicm\_Downloads"
call :HomeSync "Favorites"
call :HomeSync "Music"
call :HomeSync "Pictures"
call :HomeSync "Saved Games"
call :HomeSync "Videos"

rem mklink /h "C:\Windows\System32\Drivers\etc\hosts" "C:\Users\Sowicm\__SowicmSync\WindowsSync\Hosts\hosts"


rem ProgramDataSync

call :ProgramDataSync "FarmFrenzy3_America"
call :ProgramDataSync "GameHouse"
call :ProgramDataSync "kuwodata\KWMUSIC\ModuleData\ModPlayList"
call :ProgramDataSync "kuwodata\KWMUSIC\Conf\user"
call :ProgramDataSync "Tencent\QQPCMgr"

pause
goto :eof

:AppDataSync
call :slink "C:\Users\Sowicm\AppData\%~1" "S:\_win\AppDataSync\%~1"
goto :eof

:HomeSync
call :slink "C:\Users\Sowicm\%~1" "S:\_win\HomeSync\%~1"
goto :eof

:ProgramDataSync
call :slink "C:\ProgramData\%~1" "S:\_win\ProgramDataSync\%~1"
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
