# OSDCloud_Starter.ps1

## Overview
- original Skript by Brooks Peppin

## SYNOPSIS
Enables quick setup of the OSDCloud module by David Segura https://osdcloud.osdeploy.com. For complete functions and modules, please visit his site. And give him the credit for building OSDCloud!

## PARAMETERS
**–ADK**

Specifies that you want the script to automatically install the Windows 10 ADK and WinPE ADK onto your system. This reall only needs to be run once or if there is a new version.

**–Workspace**

Specifies the folder (workspace) where OSDCloud will store it's content.

**–WinPEDrivers**

Specifies which driver vendor(s) to add in WinPE. Separate by commas. Valid options are Dell,HP,Nutanix,VMware,Wifi.

**–New**

Specifies that you would like to cleanly install the latest OSDCloud powershell module and create a new template.

**–CustomURL**

Specifies a custom URL that you want to have OSDCloud launch on first boot inside of WinPE. Recommend this be a PS script hosted on github and copy/paste the "Raw" URL.

**–BuildISO**

Parameter to build a new ISO

**–BuildUSB**

Parameter to build a USB key

## EXAMPLE
1. Installs ADK, sets the workspace to C:\OSDCloud, installs all drivers (Dell,HP,IntelNet,LenovoDock,Nutanix,USB,VMware,WiFi) in WinPE and installs OSDCloud fresh

.\OSDCloud_Starter.ps1 -ADK -Workspace C:\OSDCloud -WinPEDrivers * -New

2. Modifies an existing OSDCloud template to add in the custom URL

.\OSDCloud_Starter.ps1 -CustomURL https://raw.githubusercontent.com/Be110/OSDCloud/main/ZTI-OSDCloud.ps1 -BuildISO

3. Change Wallpaper (https://www.osdcloud.com/setup/osdcloud-winpe)

.\OSDCloud_Starter.ps1 -Wallpaper "C:\Source\Wallpaper.jpg"

4. Builds a USB key

.\OSDCloud_Starter.ps1 -BuildUSB

