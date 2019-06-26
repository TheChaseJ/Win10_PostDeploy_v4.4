#This will set the Windows 10 Power Plan to "High Performance" even if it is not available.
#This is best used on desktops only!
invoke-command { powercfg.exe -SETACTIVE 8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c }