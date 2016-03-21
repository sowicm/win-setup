@echo off

rem 环境变量
rem wmic ENVIRONMENT where "name='path' and username=''" set VariableValue="%path%e:\tools"

setx _Apps "C:\_Apps"
setx _MyApps "%USERPROFILE%\_MyApps"

setx Include "C:\Program Files (x86)\Microsoft Visual Studio 11.0\VC\include;C:\Program Files (x86)\Windows Kits\8.0\Include\shared;C:\Program Files (x86)\Windows Kits\8.0\Include\um;C:\Program Files (x86)\Microsoft DirectX SDK (June 2010)\Include;C:\Program Files\MySQL\MySQL Server 5.5\include"

setx Lib "C:\Program Files (x86)\Microsoft Visual Studio 11.0\VC\lib;C:\Program Files (x86)\Windows Kits\8.0\Lib\win8\um\x86;C:\Program Files (x86)\Microsoft DirectX SDK (June 2010)\Lib\x86"

setx Path "%USERPROFILE%\app;%USERPROFILE%\FastRun;C:\Users\Sowicm\_MyApps\cygwin\bin;C:\Users\Sowicm\_MyApps\php;C:\Python27\;C:\Python27\Scripts;C:\Program Files (x86)\Microsoft Visual Studio 11.0\VC\bin"

setx TEMP "%USERPROFILE%\AppData\Local\Temp"

setx TMP "%USERPROFILE%\AppData\Local\Temp"

setx slib_root "%USERPROFILE%\_Projects\Active\_Supreme Libraries"

setx DISPLAY ":0.0"