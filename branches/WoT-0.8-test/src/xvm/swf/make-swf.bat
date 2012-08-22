@echo off

set cleanup=1
::set cleanup=0

set names=battle battleloading PlayersPanel StatisticForm VehicleMarkersManager

for %%i in (%names%) do (
  echo =^> %%i

  rem decode original swf
  swfmill swf2xml orig\%%i.swf orig\%%i.xml

  rem copy original xml
  copy /Y orig\%%i.xml %%i.xml > nul

  rem patch xml
  patch < %%i.xml.patch > nul

  rem build patched swf
  swfmill xml2swf %%i.xml patched\%%i.swf

  rem cleanup
  if "%cleanup%" == "1" (
    del orig\%%i.xml
    del %%i.xml
  )
)
