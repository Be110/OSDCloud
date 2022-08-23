Write-Host  -ForegroundColor Yellow "Starting Custom OSDCloud ..."
cls
Write-Host "=======================================================" -ForegroundColor Yellow
Write-Host "=======================================================" -ForegroundColor Yellow
Write-Host "=================== Autopilot Join ====================" -ForegroundColor Yellow
Write-Host "=======================================================" -ForegroundColor Yellow
Write-Host "1: Group Tag CMD AutopilotJoin" -ForegroundColor Yellow
Write-Host "2: Group Tag CMDCZE AutopilotJoin" -ForegroundColor Yellow
Write-Host "3: Group Tag CMMUDAUT AutopilotJoin" -ForegroundColor Yellow
Write-Host "4: Group Tag CMMUDCHE AutopilotJoin" -ForegroundColor Yellow
Write-Host "5: Group Tag CMMUDFRA AutopilotJoin" -ForegroundColor Yellow
Write-Host "6: Group Tag CMMUDGER AutopilotJoin" -ForegroundColor Yellow
Write-Host "7: Group Tag CMMUDITA AutopilotJoin" -ForegroundColor Yellow
Write-Host "8: Group Tag CMMUDLUX AutopilotJoin" -ForegroundColor Yellow
Write-Host "9: Group Tag CMMUDNLD AutopilotJoin" -ForegroundColor Yellow
Write-Host "10: Group Tag CMMUDPOL AutopilotJoin" -ForegroundColor Yellow
Write-Host "=======================================================" -ForegroundColor Yellow
Write-Host "===================== OS Install ======================" -ForegroundColor Yellow
Write-Host "=======================================================" -ForegroundColor Yellow
Write-Host "11: Zero-Touch Win10 21H2 | Deutsch | Enterprise" -ForegroundColor Yellow
Write-Host "12: Zero-Touch Win10 21H2 | English | Enterprise" -ForegroundColor Yellow
Write-Host "13: Zero-Touch Win10 21H2 | Czech | Enterprise" -ForegroundColor Yellow
Write-Host "14: Start GUI for custom OS"-ForegroundColor Yellow
Write-Host "=======================================================" -ForegroundColor Yellow
Write-Host "======================== Exit =========================" -ForegroundColor Yellow
Write-Host "=======================================================" -ForegroundColor Yellow
Write-Host "0: Exit`n"-ForegroundColor Yellow

$input = Read-Host "Please make a selection"

Write-Host  -ForegroundColor Yellow "Loading OSDCloud..."

Import-Module OSD -Force
Install-Module OSD -Force

Install-Script Get-WindowsAutoPilotInfo

switch ($input)
{
	'0' {Exit}
	'1' {Get-WindowsAutoPilotInfo.ps1 -Online -Assign -GroupTag "CMD"}
	'2' {Get-WindowsAutoPilotInfo.ps1 -Online -Assign -GroupTag "CMDCZE"}
	'3' {Get-WindowsAutoPilotInfo.ps1 -Online -Assign -GroupTag "CMMUDAUT"}
	'4' {Get-WindowsAutoPilotInfo.ps1 -Online -Assign -GroupTag "CMMUDCHE"}
	'5' {Get-WindowsAutoPilotInfo.ps1 -Online -Assign -GroupTag "CMMUDFRA"}
	'6' {Get-WindowsAutoPilotInfo.ps1 -Online -Assign -GroupTag "CMMUDGER"}
	'7' {Get-WindowsAutoPilotInfo.ps1 -Online -Assign -GroupTag "CMMUDITA"}
	'8' {Get-WindowsAutoPilotInfo.ps1 -Online -Assign -GroupTag "CMMUDLUX"}
	'9' {Get-WindowsAutoPilotInfo.ps1 -Online -Assign -GroupTag "CMMUDNLD"}
    	'10' {Get-WindowsAutoPilotInfo.ps1 -Online -Assign -GroupTag "CMMUDPOL"}
    	'11' {Start-OSDCloud -OSLanguage de-de -OSBuild 21H2 -OSEdition Pro -ZTI}
    	'12' {Start-OSDCloud -OSLanguage en-us -OSBuild 21H2 -OSEdition Pro -ZTI}
    	'13' {Start-OSDCloud -OSLanguage cs-cz -OSBuild 21H2 -OSEdition Pro -ZTI} 
	'14' {Start-OSDCloudGU} 
}

#wpeutil reboot
