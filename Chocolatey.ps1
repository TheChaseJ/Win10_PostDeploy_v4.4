# Install Chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco feature enable -n allowGlobalConfirmation

#--- Install Apps ---
choco install googlechrome
choco install flashplayerplugin
# choco install microsoft-teams
# choco install 7zip.install
# choco install notepadplusplus.install
# 