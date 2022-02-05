@echo off
echo Starting Office Clean-up...
echo Backing-up Previous Outlook Profiles...
ren "%AppData%\Microsoft\Outlook" "Outlook-Scripted-Backup"
ren "%LocalAppData%\Microsoft\Outlook" "Outlook-Scripted-Backup"
pause
echo Deleting Following Directories-
rmdir /s "%AppData%\Microsoft\Office"
rmdir /s "%LocalAppData%\Microsoft\Office"
pause
echo Patching Registry...
reg import .\OfficeCleanup.reg
echo File Clean-up and Registry Patching Successful!
pause
cls
gpupdate
pause