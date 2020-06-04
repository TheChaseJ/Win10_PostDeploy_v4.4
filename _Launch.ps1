<#
	.DESCRIPTION
	===========================================================================
	 Updated:      	7/10/2019 10:26 AM
	 Creators:     	Jon Childers & Chase Jones
	 Organization: 	JMF Technologies   	
	===========================================================================
	.NOTES
  Windows 10 Post Install Clean/Prep Script
  !!!!! Set "Set-ExecutionPolicy RemoteSigned" in an elevated shell before launching this script.
#>

#This will self elevate the script so with a UAC prompt since this script needs to be run as an Administrator in order to function properly.
If (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]'Administrator')) {
    Write-Host "You didn't run this script as an Administrator. This script will self elevate to run as an Administrator and continue."
    Start-Sleep 1
    Start-Process powershell.exe -ArgumentList ("-NoProfile -ExecutionPolicy Bypass -File `"{0}`"" -f $PSCommandPath) -Verb RunAs
    Exit
}

#no errors throughout
$ErrorActionPreference = 'silentlycontinue'

write-host "Launching Main Script"

# Tells the script to find other scripts in the working directory
$PSScriptRoot 

#################################################################################
Add-Type -AssemblyName PresentationFramework

$msgBoxInput =  [System.Windows.MessageBox]::Show('Do you want to install Chocolatey?','Win10 Post Deploy v4.5','YesNo','Question')

  switch  ($msgBoxInput) {

  'Yes' {

& "$PSScriptRoot\Chocolatey.ps1"

  }

  'No' {

Write-Host "Skipping Task"

  }

  }

  Write-Host "WARNING!!!" -ForegroundColor yellow -BackgroundColor black
  Write-Host "WARNING!!!" -ForegroundColor yellow -BackgroundColor black
  Write-Host "WARNING!!!" -ForegroundColor yellow -BackgroundColor black
  Write-Host "WARNING!!!" -ForegroundColor yellow -BackgroundColor black
  Write-Host "WARNING!!!" -ForegroundColor yellow -BackgroundColor black
  Write-Host "WARNING!!! DO NOT confirm the next task if this is new PC with a Preinstalled OEM Microsoft Office license!!!" -ForegroundColor yellow -BackgroundColor black
  Write-Host "WARNING!!! Activate the Preinstalled OEM Microsoft Office license before proceeding!!!" -ForegroundColor yellow -BackgroundColor black
  Pause 
  Write-Host "WARNING!!! MAKE SURE YOU READ THE MESSAGES ABOVE!!!" -ForegroundColor yellow -BackgroundColor black
  Pause 

$msgBoxInput =  [System.Windows.MessageBox]::Show('Remove Default Apps?','Win10 Post Deploy v4.5','YesNo','Question')

  switch  ($msgBoxInput) {

  'Yes' {

& "$PSScriptRoot\RemoveApps.ps1"

  }

  'No' {

Write-Host "Skipping Task"

  }

  }

$msgBoxInput =  [System.Windows.MessageBox]::Show('Disable Tasks?','Win10 Post Deploy v4.5','YesNo','Question')

  switch  ($msgBoxInput) {

  'Yes' {

& "$PSScriptRoot\DisableTasks.ps1"

  }

  'No' {

Write-Host "Skipping Task"

  }

  }

$msgBoxInput =  [System.Windows.MessageBox]::Show('Unpin Taskbar Apps?','Win10 Post Deploy v4.5','YesNo','Question')

  switch  ($msgBoxInput) {

  'Yes' {

& "$PSScriptRoot\UnPinApps.ps1"

  }

  'No' {

Write-Host "Skipping Task"

  }

  }

$msgBoxInput =  [System.Windows.MessageBox]::Show('Unpin Start Menu Apps?','Win10 Post Deploy v4.5','YesNo','Question')

  switch  ($msgBoxInput) {

  'Yes' {

& "$PSScriptRoot\UnpinStart.ps1"

  }

  'No' {

Write-Host "Skipping Task"

  }

  }

$msgBoxInput =  [System.Windows.MessageBox]::Show('Remove Annoyances?','Win10 Post Deploy v4.5','YesNo','Question')

  switch  ($msgBoxInput) {

  'Yes' {

& "$PSScriptRoot\Annoyances.ps1"

  }

  'No' {

Write-Host "Skipping Task"

  }

  }

$msgBoxInput =  [System.Windows.MessageBox]::Show('Protect Privacy?','Win10 Post Deploy v4.5','YesNo','Question')

  switch  ($msgBoxInput) {

  'Yes' {

& "$PSScriptRoot\ProtectPrivacy.ps1"

  }

  'No' {

Write-Host "Skipping Task"

  }

  }

$msgBoxInput =  [System.Windows.MessageBox]::Show('Show File Extensions?','Win10 Post Deploy v4.5','YesNo','Question')

  switch  ($msgBoxInput) {

  'Yes' {

& "$PSScriptRoot\FileExtensions.ps1"

  }

  'No' {

Write-Host "Skipping Task"

  }

  }

$msgBoxInput =  [System.Windows.MessageBox]::Show('Disable Edge as PDF viewer?','Win10 Post Deploy v4.5','YesNo','Question')

  switch  ($msgBoxInput) {

  'Yes' {

& "$PSScriptRoot\DisableEdgeDefaults.ps1"

  }

  'No' {

Write-Host "Skipping Task"

  }

  }

$msgBoxInput =  [System.Windows.MessageBox]::Show('Optimize Power Plan?','Win10 Post Deploy v4.5','YesNo','Question')

  switch  ($msgBoxInput) {

  'Yes' {

& "$PSScriptRoot\PowerPlan.ps1"

  }

  'No' {

Write-Host "Skipping Task"

  }

  }

$msgBoxInput =  [System.Windows.MessageBox]::Show('Would you like to start cleanup? *May disable reverting back to Windows 7*','Win10 Post Deploy v4.5','YesNo','Question')

  switch  ($msgBoxInput) {

  'Yes' {

dism /online /Cleanup-Image /StartComponentCleanup

  }

  'No' {

Write-Host "Skipping Task"

  }

  }

write-host "Finished"

$msgBoxInput =  [System.Windows.MessageBox]::Show('A system reboot is necessary to complete some task. Reboot your PC?','Win10 Post Deploy v4.5','YesNo','Question')

  switch  ($msgBoxInput) {

  'Yes' {

Restart-Computer

  }

  'No' {

Exit

  }

  }
