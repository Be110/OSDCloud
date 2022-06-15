#OSDCloud creator tool
# OSDCloud module created by David Segura
# https://osdcloud.osdeploy.com/
# 
# original script written by Brooks Peppin -> https://github.com/brookspeppin/WorkspaceONE/blob/master/OSDCloud/OSDCloud_Starter.ps1
#--------------------------------------------
#----------------Pre-Reqs--------------------
#--------------------------------------------
[CmdletBinding()]
param (
    [switch]$ADK,
    [string]$workspace,
    [ValidateSet('*','Dell','HP','IntelNet','LenovoDock','Nutanix','USB','VMware','Wifi')]
    $WinPEDrivers,
    [switch]$New,
    [switch]$BuildISO,
    $CustomURL,
    [switch]$Wallpaper,
    [switch]$BuildUSB,
    [switch]$DriverPack
)



#Install Win10 ADK and WinPE ADK
If($ADK){
    Write-Host "Downloading ADKsetup.exe..."
    $downloads = "$env:USERPROFILE\downloads"
    Invoke-WebRequest "https://go.microsoft.com/fwlink/?linkid=2120254" -OutFile $downloads\adksetup.exe
    
    Write-Host "Installing ADK for Windows 10"
    start-process -FilePath "$downloads\adksetup.exe" -ArgumentList "/quiet /features OptionId.DeploymentTools" -Wait
    
    Write-Host "Downloading ADKWinpesetup.exe..."
    Invoke-WebRequest "https://go.microsoft.com/fwlink/?linkid=2120253" -OutFile $downloads\adkwinpesetup.exe
    Write-Host "Installing ADK WinPE for Windows 10"
    start-process -FilePath "$downloads\adkwinpesetup.exe" -ArgumentList "/quiet /features OptionId.WindowsPreinstallationEnvironment" -Wait
}

if($New){
    Write-Host "Installing OSDCloud Powershell Module"
    Install-Module OSD -Force
    
    Write-Host "Setting up OSDCloud template..."
    New-OSDCloudTemplate -WinRE -Language de-de

}
if($workspace){

    New-OSDCloudWorkspace -WorkspacePath $workspace
}

if ($WinPEDrivers) {
    Edit-OSDCloudWinPE -CloudDriver $WinPEDrivers
}

if($CustomURL){
    Edit-OSDCloudWinPE -WebPSScript $CustomURL 
}
if($BuildISO){
    New-OSDCloudISO
}

if($Wallpaper){
    Edit-OSDCloudWinPE -Wallpaper $Wallpaper 
}

if($BuildUSB){
    New-OSDCloudUSB
}

if($DriverPack){
    Update-OSDCloudUSB -DriverPack $DriverPack
}
