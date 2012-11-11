@echo off

set WOT=D:\home\max\WoT

copy /Y login.swf %WOT%\res_mods\0.8.1\gui\flash\login.swf
cd %WOT%
start WorldOfTanks.exe
