color 02
echo "Windows office offline Activator Script!"
echo "made by @termuxtest1"
echo "press enter to start"

echo "------------------------------------------------------------------"
echo "select your windows version only professional versions."
echo "press 1 for Microsoft Office 2021"
echo "press 2 for Microsoft Office 2019"
echo "press 3 for Microsoft Office 2016"
echo "press 4 for Microsoft Office 2013"
echo "press 5 for Microsoft Office 2010"

@echo off
set /p no=Enter Your Choice: 
echo %no%

echo "Installing MS Office key."
IF %no%==1 (
    echo " Matched MIcrosoft Office 2021"
    cd C:\Program Files\Microsoft Office\Office21
    cscript ospp.vbs /inpkey FXYTK-NJJ8C-GB6DW-3DYQT-6F7TH

    )
IF %no%==2 (
    echo " Matched Microsoft Office 2019"
    cd "C:\Program Files\Microsoft Office\Office19"
    cscript ospp.vbs /inpkey NMMKJ-6RK4F-KMJVX-8D9MJ-6MWKP
    )
IF %no%==3 (
    echo " Matched Microsoft Office 2016"
    cd "C:\Program Files\Microsoft Office\Office16"
    cscript ospp.vbs /inpkey XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99
    )
IF %no%==4 (
    echo "Matched Microsoft Office 2013"
    cd "C:\Program Files\Microsoft Office\Office13"
    cscript ospp.vbs /inpkey YC7DK-G2NP3-2QQC3-J6H88-GVGXT
    )
IF %no%==5 (
    echo "Matched Microsoft Office 2010"
    cd "C:\Program Files\Microsoft Office\Office10"
    cscript ospp.vbs /inpkey VYBBJ-TRJPB-QFQRF-QFT4D-H3GVB
    )

cscript ospp.vbs /sethst:kms01.woshub.com

cscript ospp.vbs /act

echo "Restart to activate."
sleep 30
echo "Restarting in a minute."
shutdown /s /t 60
echo "bye bye..."
exit