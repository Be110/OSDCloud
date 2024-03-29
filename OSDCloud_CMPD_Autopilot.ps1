Write-Host  -ForegroundColor Yellow "Starting Custom OSDCloud ..."
cls
Write-Host "===================== Main Menu =======================" -ForegroundColor Yellow
Write-Host "=======================================================" -ForegroundColor Yellow
Write-Host "1: Zero-Touch Win10 22H2 | Deutsch | Enterprise" -ForegroundColor Yellow
Write-Host "2: Zero-Touch Win10 22H2 | English | Enterprise" -ForegroundColor Yellow
Write-Host "3: Zero-Touch Win10 22H2 | Czech | Enterprise" -ForegroundColor Yellow
Write-Host "4: Start GUI for custom OS"-ForegroundColor Yellow
Write-Host "5: CMPD AutopilotJoin"-ForegroundColor Yellow
Write-Host "6: Exit`n"-ForegroundColor Yellow
$input = Read-Host "Please make a selection"

Write-Host  -ForegroundColor Yellow "Loading OSDCloud..."

Import-Module OSD -Force
Install-Module OSD -Force

Install-Script Get-WindowsAutoPilotInfo

switch ($input)
{
    '1' { Start-OSDCloud -OSLanguage de-de -OSBuild 22H2 -OSEdition Pro -ZTI }
    '2' { Start-OSDCloud -OSLanguage en-us -OSBuild 22H2 -OSEdition Pro -ZTI }
    '3' { Start-OSDCloud -OSLanguage cs-cz -OSBuild 22H2 -OSEdition Pro -ZTI } 
    '4' { Start-OSDCloudGUI	} 
    '5' { Get-WindowsAutoPilotInfo.ps1 -Online -Assign -GroupTag "CMPD"}
    '6' { Exit }
}

#wpeutil reboot
