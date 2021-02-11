#Remove Quick Access Icon from Windows 10 File Explorer
$registryPath = "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer"

$Name = "HubMode"

$value = "1"

IF(!(Test-Path $registryPath))

  {

    New-Item -Path $registryPath -Force | Out-Null

    New-ItemProperty -Path $registryPath -Name $name -Value $value `

    -PropertyType DWORD -Force | Out-Null}

 ELSE {

    New-ItemProperty -Path $registryPath -Name $name -Value $value `

    -PropertyType DWORD -Force | Out-Null}