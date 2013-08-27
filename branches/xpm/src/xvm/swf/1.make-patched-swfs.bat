@echo off

set patch_swfs=battle.swf battleloading.swf LangBarPanel.swf Minimap.swf PlayersPanel.swf
set patch_swfs=%patch_swfs% StatisticForm.swf TeamBasesPanel.swf VehicleMarkersManager.swf

set as3_swfs=Application.swf
::set as3_swfs=%patch_swfs% gameloading.swf

rem Patch SWFs
for %%i in (%patch_swfs%) do call :do_patch_swf %%~ni
for %%i in (%as3_swfs%) do call :do_patch_as3 %%~ni

goto :EOF

:do_patch_swf
set n=%1
swfmill swf2xml orig\%n%.swf orig\%n%.xml
copy /Y orig\%n%.xml %n%.xml > nul
set ok=failed
patch < %n%.xml.patch && set ok=ok
echo patch result: %ok% (%n%.swf)
if exist %n%.xml.orig del %n%.xml.orig
if "%ok%" == "ok" (
  swfmill xml2swf %n%.xml %n%.swf
  del %n%.xml orig\%n%.xml
)
goto :EOF

:do_patch_as3
set n=%1
echo %1.swf
copy /Y flash\%n%.swf %n%.swf > nul
abcexport.exe %n%.swf
rabcdasm %n%-0.abc
set ok=failed
patch -p0 < %n%.patch && set ok=ok
echo patch result: %ok% (%n%.swf)
if "%ok%" == "ok" (
  rabcasm %n%-0/%n%-0.main.asasm
  abcreplace %n%.swf 0 %n%-0/%n%-0.main.abc
  del %n%-0.abc
  rmdir /S /Q %n%-0
)
goto :EOF
