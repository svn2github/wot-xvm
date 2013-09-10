::
:: ������ ��� ������� ������ XVM �������
:: The script to automatically change the XVM config.
::
:: ��������� ������ � ����� xvm\configs 
:: � ������ �������������� ������ ������ ��� ����� � �������� �� ���� ������
:: Put the script into xvm\configs and drag'n'drop the folder(or file any.xc)
:: with wanted config on the scpirt. The config from that folder will be substituted into xvm/xvm.xc
::
:: http://www.koreanrandom.com/forum/topic/4643-
::
@echo off

:: ��������� ������ �� ������ ������
copy /y "..\xvm.xc" "..\xvm.xc.old" >nul

:: ���� ���������� �����, ���� ������ ������ ���
if exist "%~nx1\@xvm.xc" echo ${"configs/%~nx1/@xvm.xc":"."}>"..\xvm.xc"
if exist "%~nx1\xvm.xc" echo ${"configs/%~nx1/xvm.xc":"."}>"..\xvm.xc"

:: ���� ���������� ���� � ����������� .xc, ������ ���� ������
if "%~x1"==".xc" if not exist "%~nx1\*.*" echo ${"configs/%~nx1":"."}>"..\xvm.xc"

:: ���� ��� ���������, ���������� ��������� ������
:: if "%1"=="" echo ${"configs/@Default/@xvm.xc":"."}>"..\xvm.xc"