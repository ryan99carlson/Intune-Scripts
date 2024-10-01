# Remove Default Mail App for all users
Get-AppxPackage -AllUsers -Name Microsoft.windowscommunicationsapps | Remove-AppxPackage

# Get all Users
$AllUsers = Get-ChildItem -Path "$($ENV:SystemDrive)\Users" -Directory

# Process all Users
foreach ($User in $AllUsers) {
    Write-Host "Processing user: $($User.Name)"

    # Locate installation folder
    $localAppData = "$($ENV:SystemDrive)\Users\$($User.Name)\AppData\Local\Packages"
    $targetedpackage = Get-ChildItem -Path $localAppData | Where-Object {$_.name -like "*microsoft.windowscommunicationsapps_*"}

    if ($targetedpackage) {
        $DefaultMailapp_Files = Join-Path -Path $targetedpackage.FullName -ChildPath 'LocalState\Files'
        if (Test-Path -Path $DefaultMailapp_Files) {
            Write-Host "  Removing Mail App files from user: $($User.Name)"
            Remove-Item -Path $DefaultMailapp_Files -Recurse -Force
        } else {
            Write-Host "  Mail App files not found for user: $($User.Name)"
        }
    } else {
        Write-Host "  Mail App not installed for user: $($User.Name)"
    }
}
