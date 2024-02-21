######################################
#### Config Windows 11 Start Menu ####
######################################

#Created By: Ryan Carlson
#UPDATED ON: 01/31/24

# -------------------------------------------------------- Version Infomation ----------------------------------------------------------- #
# v1.0 | Create script to modify registry keys for Windows 11 start menu
# v1.1 | Added force parameter to help the install
#
# ---------------------------------------------------------------------------------------------------------------------------------------- #

#Change Startmenu alignment
    New-ItemProperty "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarAl" -Value "0" -PropertyType Dword -Force
#Remove Chat from Taskbar
    New-ItemProperty "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarMn" -Value "0" -PropertyType Dword -Force
#Remove widgets from Taskbar
    New-ItemProperty "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "TaskbarDa" -Value "0" -PropertyType Dword -Force
#Set Start menu to "More pins"
    New-ItemProperty "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name "Start_Layout" -Value "1" -PropertyType Dword -Force