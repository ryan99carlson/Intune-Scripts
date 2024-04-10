#Remove New Outlook
    Get-AppxPackage -Name Microsoft.OutlookForWindows | Remove-AppPackage
#Remove Old Teams
    Get-AppxPackage -Name MicrosoftTeams | Remove-AppPackage
#Remove Default Mail App
    Get-AppxPackage -Name Microsoft.windowscommunicationsapps | Remove-AppPackage
