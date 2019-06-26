# Tweaks for older computers who may need a Boost
# Extra strict service disabling to squeeze out the most RAM & CPU.

# Disable hibernation/sleep
    Write-Host "Disabling hibernation..."
    Start-Process 'powercfg.exe' -Verb runAs -ArgumentList '/h off'

# Disable Connected Standby (CSEnabled)
    Write-Host "Disabling Connected Standby..."
    Set-ItemProperty -Path 'HKLM:\SYSTEM\\CurrentControlSet\Control\Power' -Name 'CSEnabled' -Value 0