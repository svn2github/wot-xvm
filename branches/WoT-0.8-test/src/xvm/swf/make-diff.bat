@echo off

set names=battle battleloading PlayersPanel StatisticForm VehicleMarkersManager

for %%i in (%names%) do (
  echo =^> %%i
  diff -u orig\%%i.xml %%i.xml > %%i.xml.patch
)
