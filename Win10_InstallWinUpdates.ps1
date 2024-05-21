#Install PSWindows update Module
    Install-Module PSWindowsUpdate -Force
#Get & Install windows updates
    Install-WindowsUpdate -Confirm:$false -IgnoreReboot