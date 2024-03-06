###################################################
#### Remove Shipping Batch file for UPS Update ####
###################################################

#Created By: Ryan Carlson
#UPDATED ON: 03/05/24

# -------------------------------------------------------- Version Infomation ------------------------------------------------------------ #
# v1.0 | Create script to remove batch file from users desktop and remove credentials
# ---------------------------------------------------------------------------------------------------------------------------------------- #

#Remove batch file from public desktop
    Get-childitem -Path 'C:\users\public\Desktop' | Where-Object {$_.Name -eq 'UPDATE UPS.bat'}
#Remove batch file from users desktop 
    Get-childitem -Path ($ENV:USERPROFILE + '\Desktop') | Where-Object {$_.Name -eq 'UPDATE UPS.bat'}
