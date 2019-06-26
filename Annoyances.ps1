<#	
	.NOTES
	===========================================================================
	 Updated:   	6/7/2019 12:26 PM
	 Creators:     	Jon Childers & Chase Jones
	 Organization: 	JMF Technologies  	
	===========================================================================
	.DESCRIPTION
	This file will disable annoyances in Windows 10.
#>

Set-WindowsExplorerOptions -EnableShowHiddenFilesFoldersDrives -EnableShowProtectedOSFiles -EnableShowFileExtensions

# Lower UAC level (disabling it completely would break apps)
    Write-Output "Lowering UAC level..."
    Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'ConsentPromptBehaviorAdmin' -Value 0
    Set-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' -Name 'PromptOnSecureDesktop' -Value 0

# Disable Quick Access: Recent Files
    Write-Output "Disabling Quick Access"
    Set-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer' -Name 'ShowRecent' -Value 0

# Disable Quick Access: Frequent Folders
    Set-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer' -Name 'ShowFrequent' -Value 0

# Change Control Panel view to "small icons"
    Write-Output "Change Control Panel view"
    Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel' -Name'AllItemsIconView' -Value 1

# Change Explorer home screen back to "This PC"
    Write-Output "Changing Explorer home to This PC"
    Set-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'LaunchTo' -Value 1

# Set taskbar buttons to show labels and never combine
    Write-Output "Setting taskbar buttons to never combine..."
    Set-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarGlomLevel' -Value 2

# Enable and start Remote Registry
    Write-Output "Enabling and Starting Remote Registry"
    Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\RemoteRegistry' -Name 'ImagePath' -Value 'C:\Windows\system32\svchost.exe -k localService -p'
    Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\RemoteRegistry' -Name 'DisplayName' -Value 'Remote Registry'
    Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\RemoteRegistry' -Name 'Description' -Value '@regsvc.dll,-2'
    Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\RemoteRegistry' -Name 'ObjectName' -Value 'NT AUTHORITY\LocalService'
    Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\RemoteRegistry' -Name 'Start' -Value 2
    Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\RemoteRegistry' -Name 'Type' -Value 32
    Start-Service RemoteRegistry

# Enable and start Windows Remote Management (WS-Management)
    Write-Output "Enabling and Starting Remote Management"
    Set-ItemProperty -Path 'HKLM:\SYSTEM\CurrentControlSet\Services\WinRM' -Name 'Start' -Value 2
    Start-Service WinRM

# Set NumLock ON at Windows login screen
    $path = 'HKU:\.DEFAULT\Control Panel\Keyboard\'
    $name = 'InitialKeyboardIndicators'
    $value = '2'
    Set-Itemproperty -Path $path -Name $name -Value $value

# Hide Task View button
    Write-Output "Hide Task View Button"
    Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'ShowTaskViewButton' -Value 0

#Remove People from the Taskbar
    Write-Host "Removing People from the taskbar"
    Set-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced\People' -Name 'PeopleBand' -Value 0

# Remove 3D Objects folder from Windows Explorer
    REG DELETE 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}' /F
    REG DELETE 'HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\MyComputer\NameSpace\{0DB7E03F-FC29-4DC6-9020-FF41B59E513A}' /F

# Stop and disable WAP Push Service
    Write-Output "Stopping and disabling WAP Push Service"
    Stop-Service 'dmwappushservice'
    Set-Service 'dmwappushservice' -StartupType Disabled

# Disable Xbox Gamebar
    Set-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\GameDVR' -Name 'AppCaptureEnabled' -Value 0
    Set-ItemProperty -Path 'HKCU:\System\GameConfigStore' -Name 'GameDVR_Enabled' -Value 0

# Hide Fun Facts on Lockscreen
    Write-Host 'Hiding Fun Facts on Lockscreen'
    Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name 'RotatingLockScreenOverlayEnabled' -Value 0

# Hide Search button / box
    Write-Host "Hiding Search Box / Button"
    Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Search' -Name 'SearchboxTaskbarMode' -Value 0

# Start Menu Disable Bing Search Results
    Set-ItemProperty -Path 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Search' -Name 'BingSearchEnabled' -Value 0

# Remove Edge icon on desktop
    Write-Output "Disabling Edge Desktop Shortcut Creation"
    New-ItemProperty -Path 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer' -Name 'DisableEdgeDesktopShortcutCreation' -Type DWORD -Value 1

# Better File Explorer
    Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'NavPaneExpandToCurrentFolder' -Value 1
    Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'NavPaneShowAllFolders' -Value 1
    Set-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'MMTaskbarMode' -Value 2

# Stop and disable the Diagnostics Track
    Write-Output "Stopping and disabling Diagnostics Tracking Service"
    Stop-Service 'DiagTrack'
    Set-Service 'DiagTrack' -StartupType Disabled