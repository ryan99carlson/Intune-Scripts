#Get Connection Profile
    $Connection = Get-NetConnectionProfile -Name 'Anholttech.local'
#Check if Profile is Private
    if($Connection.NetworkCategory -eq 'Public'){
        #Change Network Profile to Private
            Set-NetConnectionProfile -Name 'Anholttech.local' -NetworkCategory Private
    }