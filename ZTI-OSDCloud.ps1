Write-Host  -ForegroundColor Yellow "Starting Custom OSDCloud ..."
cls
Write-Host "===================== Main Menu =======================" -ForegroundColor Yellow
Write-Host "=======================================================" -ForegroundColor Yellow
Write-Host "1: Start GUI for custom OS"-ForegroundColor Yellow
Write-Host "2: Zero-Touch Win10 22H2 | German | Pro" -ForegroundColor Yellow
Write-Host "3: Zero-Touch Win10 22H2 | English | Pro" -ForegroundColor Yellow
Write-Host "4: Zero-Touch Win10 22H2 | Czech | Pro" -ForegroundColor Yellow
Write-Host "5: Zero-Touch Win10 22H2 | Polish | Pro" -ForegroundColor Yellow
Write-Host "6: Zero-Touch Win10 22H2 | Italian | Pro" -ForegroundColor Yellow
Write-Host "7: Zero-Touch Win11 22H2 | German | Pro" -ForegroundColor Yellow
Write-Host "10: Exit`n"-ForegroundColor Yellow
$input = Read-Host "Please make a selection"

Write-Host  -ForegroundColor Yellow "Loading OSDCloud..."

Import-Module OSD -Force
Install-Module OSD -Force

switch ($input)
{
    '1' { Start-OSDCloudGUI	} 
    '2' { Start-OSDCloud -OSLanguage de-de -OSVersion "Windows 10" -OSBuild 22H2 -OSEdition Pro -OSLicense Retail -ZTI }
    '3' { Start-OSDCloud -OSLanguage en-us -OSVersion "Windows 10" -OSBuild 22H2 -OSEdition Pro -OSLicense Retail -ZTI }
    '4' { Start-OSDCloud -OSLanguage cs-cz -OSVersion "Windows 10" -OSBuild 22H2 -OSEdition Pro -OSLicense Retail -ZTI } 
    '5' { Start-OSDCloud -OSLanguage pl-pl -OSVersion "Windows 10" -OSBuild 22H2 -OSEdition Pro -OSLicense Retail -ZTI } 
    '6' { Start-OSDCloud -OSLanguage it-it -OSVersion "Windows 10" -OSBuild 22H2 -OSEdition Pro -OSLicense Retail -ZTI } 
    '7' { Start-OSDCloud -OSLanguage de-de -OSVersion "Windows 11" -OSBuild 22H2 -OSEdition Pro -OSLicense Retail -ZTI }
    '10' { Exit	}
}

wpeutil reboot
