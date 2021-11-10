@echo off

echo **********************************************************************************
echo *                   Custom LastChaos Client Downloader Compiler                  *
echo *          https://github.com/nicolasgomez1/LastChaos-Client-Downloader          *
echo **********************************************************************************

set /p ClientLink="Enter Client Download URL: "
set /p ServerName="Enter Server Name: "
set /p URLInfoAbout="Enter Website Link: "
set /p HelpLink="Enter Help Website Link: "

set ConfigFile="Resources\config.ini"

echo [Settings] > %ConfigFile%
echo ClientLink=%ClientLink% >> %ConfigFile%
echo ServerName=%ServerName% >> %ConfigFile%
echo URLInfoAbout=%URLInfoAbout% >> %ConfigFile%
echo HelpLink=%HelpLink% >> %ConfigFile%
echo Settings ready!

echo Creating SFX...
WinRAR.exe a -y -r -ep1 -md5 -sfx "Bin\LastChaos Downloader.exe" -zCompiler.ini -iicon32x32.ico "Resources\"
echo SFX Ready!

echo Deleting residue...
del %ConfigFile%

explorer Bin
pause