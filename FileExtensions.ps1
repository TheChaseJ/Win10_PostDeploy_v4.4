# Show

function ShowFileExtensions()
{
    # http://superuser.com/questions/666891/script-to-set-hide-file-extensions
    Push-Location
    Set-Location HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced
    Set-ItemProperty . HideFileExt "0"
    Pop-Location
    Stop-Process -processName: Explorer -force # This will restart the Explorer service to make this work.
}
 


# Hide

function HideFileExtensions()
{
    # http://superuser.com/questions/666891/script-to-set-hide-file-extensions
    Push-Location
    Set-Location HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced
    Set-ItemProperty . HideFileExt "1"
    Pop-Location
    Stop-Process -processName: Explorer -force # This will restart the Explorer service to make this work.
}

# Uncomment the one you want
ShowFileExtensions 
# HideFileExtensions