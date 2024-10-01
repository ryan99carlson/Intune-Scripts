#Install Nuget Package Provider
    Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force

#Install PSWindows update Module
    Install-Module PSWindowsUpdate -Force
    
#Get & Install windows updates
    Install-WindowsUpdate -Confirm:$false -IgnoreReboot