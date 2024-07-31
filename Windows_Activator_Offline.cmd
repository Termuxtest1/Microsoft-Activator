@echo off
:: BatchGotAdmin
:-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"=""
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"

color 02
echo "Windows offline Activator Script!"
echo "made by @termuxtest1"
echo "press enter to start"

echo "------------------------------------------------------------------"
echo "select your windows version only professional versions."
echo "press 1 for windows 11"
echo "press 2 for windows 10"
echo "press 3 for windows 8"
echo "press 4 for windows 7"
echo "press 5 for windows vista."

@echo off
set /p no=Enter Your Choice: 
echo %no%

echo "Installing product key."
IF %no%==1 (
    echo " Matched Windows version 11"
 slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
    )
IF %no%==2 (
    echo " Matched Windows version 10"
 slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
    )
IF %no%==3 (
    echo " Matched Windows version 8"
 slmgr /ipk NG4HW-VH26C-733KW-K6F98-J8CK4
    )
IF %no%==4 (
    echo "Matched Windows version 7"
slmgr /ipk FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4
    )
IF %no%==5 (
    echo "Matched version vista"
slmgr /ipk VKK3X-68KWM-X2YGT-QR4M6-4BWMV
    )

slmgr /skms Kms9.MSGuides.com

slmgr /ato

echo "Restart to activate."
sleep 30
echo "Restarting in a minute."
shutdown /s /t 60
echo "bye bye..."
exit
