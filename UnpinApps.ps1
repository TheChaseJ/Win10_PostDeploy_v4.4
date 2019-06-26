# Unpins Apps from taskbar
Function UnpinApp ( [string]$appname ) {
            try {
                $exec = $false
                
                ((New-Object -Com Shell.Application).NameSpace('shell:::{4234d49b-0245-4df3-b780-3893943456e1}').Items() | ?{$_.Name -eq $appname}).Verbs() | ?{$_.Name.replace('&','') -match 'Unpin from taskbar'} | %{$_.DoIt(); $exec = $true}
                
                if ($exec) {
                    Write "App '$appname' unpinned from Taskbar"
                } else {
                    Write "'$appname' not found or 'Unpin from taskbar' not found on item!"
                }
                
            } catch {
                Write-Error "Error unpinning $appname from taskbar!"
            }
        }
UnPinApp "Microsoft Edge"
UnPinApp "Microsoft Store"
UnPinApp "Mail"