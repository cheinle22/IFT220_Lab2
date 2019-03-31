# brutforce script to make some organizational units

# you need to change "https://github.com/cheinle22/IFT220_Lab2.git" to match your domain and update the  initials to match or remove them

Write-Host -ForegroundColor yellow "Creating OUs"
New-ADOrganizationalUnit -Name _Computers -Path "DC=AD,DC=sparky-tech,DC=com" -Description " Computers"
 New-ADOrganizationalUnit -Name Workstations -Path "OU=_Computers,DC=AD,DC=sparky-tech,DC=com"
  New-ADOrganizationalUnit -Name President -Path "OU=Workstations,OU=_Computers,DC=AD,DC=sparky-tech,DC=com"
  New-ADOrganizationalUnit -Name Finance -Path "OU=Workstations,OU=_Computers,DC=AD,DC=sparky-tech,DC=com"
  New-ADOrganizationalUnit -Name HR -Path "OU=Workstations,OU=_Computers,DC=AD,DC=sparky-tech,DC=com"
  New-ADOrganizationalUnit -Name Sales -Path "OU=Workstations,OU=_Computers,DC=AD,DC=sparky-tech,DC=com"
  New-ADOrganizationalUnit -Name Legal -Path "OU=Workstations,OU=_Computers,DC=AD,DC=sparky-tech,DC=com"
  New-ADOrganizationalUnit -Name IT -Path "OU=Workstations,OU=_Computers,DC=AD,DC=sparky-tech,DC=com"
 New-ADOrganizationalUnit -Name Servers -Path "OU=_Computers,DC=AD,DC=sparky-tech,DC=com"
  New-ADOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=_Computers,DC=AD,DC=sparky-tech,DC=com"
  New-ADOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=_Computers,DC=AD,DC=sparky-tech,DC=com"
New-ADOrganizationalUnit -Name _Groups -Path "DC=AD,DC=sparky-tech,DC=com" -Description "High Level Security Groups"
New-ADOrganizationalUnit -Name _Privileged_Accounts -Path "DC=AD,DC=sparky-tech,DC=com" -Description "Privileged Accounts"
New-ADOrganizationalUnit -Name _Users -Path "DC=AD,DC=sparky-tech,DC=com" -Description "Non-Privileged Accounts"
Write-Host -ForegroundColor yellow "Done creating OUs"
Write-Host -ForegroundColor yellow ""

Write-Host -ForegroundColor yellow "Creating groups based on department"
New-ADGroup -GroupCategory Security -GroupScope Global -Name President -Path "OU=_Groups,DC=AD,DC=sparky-tech,DC=com"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Finance -Path "OU=_Groups,DC=AD,DC=sparky-tech,DC=com"
New-ADGroup -GroupCategory Security -GroupScope Global -Name HR -Path "OU=_Groups,DC=AD,DC=sparky-tech,DC=com"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Sales -Path "OU=_Groups,DC=AD,DC=sparky-tech,DC=com"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Legal -Path "OU=_Groups,DC=AD,DC=sparky-tech,DC=com"
New-ADGroup -GroupCategory Security -GroupScope Global -Name IT -Path "OU=_Groups,DC=AD,DC=sparky-tech,DC=com"
# Create a Leadership group for the President and VPs to access restricted a file share
New-ADGroup -GroupCategory Security -GroupScope Global -Name Leadership -Path "OU=_Groups,DC=AD,DC=sparky-tech,DC=com"
Write-Host -ForegroundColor yellow "Done creating groups"
Write-Host -ForegroundColor yellow ""
