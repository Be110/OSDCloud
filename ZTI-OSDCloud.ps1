Write-Host  -ForegroundColor Yellow "Starting Custom OSDCloud ..."
cls
Write-Host "===================== Main Menu =======================" -ForegroundColor Yellow
Write-Host "=======================================================" -ForegroundColor Yellow
Write-Host "1: Zero-Touch Win10 21H2 | Deutsch | Pro" -ForegroundColor Yellow
Write-Host "2: Zero-Touch Win10 21H2 | English | Pro" -ForegroundColor Yellow
Write-Host "3: Zero-Touch Win10 21H2 | Czech | Pro" -ForegroundColor Yellow
Write-Host "4: Start GUI for custom OS"-ForegroundColor Yellow
Write-Host "5: Exit`n"-ForegroundColor Yellow
$input = Read-Host "Please make a selection"

Write-Host  -ForegroundColor Yellow "Loading OSDCloud..."

Import-Module OSD -Force
Install-Module OSD -Force

switch ($input)
{
    '1' { Start-OSDCloud -OSLanguage de-de -OSBuild 21H2 -OSEdition Pro -ZTI }
    '2' { Start-OSDCloud -OSLanguage en-us -OSBuild 21H2 -OSEdition Pro -ZTI }
    '3' { Start-OSDCloud -OSLanguage cs-cz -OSBuild 21H2 -OSEdition Pro -ZTI } 
    '4' { Start-OSDCloudGUI	} 
    '5' { Exit	}
}

wpeutil reboot
