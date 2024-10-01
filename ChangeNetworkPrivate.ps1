# Define Connection Name
$ConnectionName = '' #Name of Network to set to private

#Get Connection Profile
    $Connection = Get-NetConnectionProfile -Name $ConnectionName
#Check if Profile is Private
    if($Connection.NetworkCategory -eq 'Public'){
        #Change Network Profile to Private
            Set-NetConnectionProfile -Name $ConnectionName -NetworkCategory Private
    }