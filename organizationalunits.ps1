# brutforce script to make some organizational units

# you need to change "DC=ad,DC=sparky-tech,DC=com2" to match your domain and update the CH initials to match or remove them

Write-Host -ForegroundColor yellow "Creating OUs"
New-ADOrganizationalUnit -Name CH_Computers -Path "https://github.com/cheinle22/IFT220_Lab2" -Description "CH Computers"
 New-ADOrganizationalUnit -Name Workstations -Path "OU=CH_Computers,https://github.com/cheinle22/IFT220_Lab2"
  New-ADOrganizationalUnit -Name President -Path "OU=Workstations,OU=CH_Computers,https://github.com/cheinle22/IFT220_Lab2"
  New-ADOrganizationalUnit -Name Finance -Path "OU=Workstations,OU=CH_Computers,https://github.com/cheinle22/IFT220_Lab2"
  New-ADOrganizationalUnit -Name HR -Path "OU=Workstations,OU=CH_Computers,https://github.com/cheinle22/IFT220_Lab2"
  New-ADOrganizationalUnit -Name Sales -Path "OU=Workstations,OU=CH_Computers,https://github.com/cheinle22/IFT220_Lab2"
  New-ADOrganizationalUnit -Name Legal -Path "OU=Workstations,OU=CH_Computers,https://github.com/cheinle22/IFT220_Lab2"
  New-ADOrganizationalUnit -Name IT -Path "OU=Workstations,OU=CH_Computers,https://github.com/cheinle22/IFT220_Lab2"
 New-ADOrganizationalUnit -Name Servers -Path "OU=CH_Computers,https://github.com/cheinle22/IFT220_Lab2"
  New-ADOrganizationalUnit -Name Hyper-V -Path "OU=Servers,OU=CH_Computers,https://github.com/cheinle22/IFT220_Lab2"
  New-ADOrganizationalUnit -Name Exchange -Path "OU=Servers,OU=CH_Computers,https://github.com/cheinle22/IFT220_Lab2"
New-ADOrganizationalUnit -Name CH_Groups -Path "https://github.com/cheinle22/IFT220_Lab2" -Description "High Level Security Groups"
New-ADOrganizationalUnit -Name CH_Privileged_Accounts -Path "https://github.com/cheinle22/IFT220_Lab2" -Description "Privileged Accounts"
New-ADOrganizationalUnit -Name CH_Users -Path "https://github.com/cheinle22/IFT220_Lab2" -Description "Non-Privileged Accounts"
Write-Host -ForegroundColor yellow "Done creating OUs"
Write-Host -ForegroundColor yellow ""

Write-Host -ForegroundColor yellow "Creating groups based on department"
New-ADGroup -GroupCategory Security -GroupScope Global -Name President -Path "OU=CH_Groups,https://github.com/cheinle22/IFT220_Lab2"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Finance -Path "OU=CH_Groups,https://github.com/cheinle22/IFT220_Lab2"
New-ADGroup -GroupCategory Security -GroupScope Global -Name HR -Path "OU=CH_Groups,https://github.com/cheinle22/IFT220_Lab2"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Sales -Path "OU=CH_Groups,https://github.com/cheinle22/IFT220_Lab2"
New-ADGroup -GroupCategory Security -GroupScope Global -Name Legal -Path "OU=CH_Groups,https://github.com/cheinle22/IFT220_Lab2"
New-ADGroup -GroupCategory Security -GroupScope Global -Name IT -Path "OU=CH_Groups,https://github.com/cheinle22/IFT220_Lab2"
# Create a Leadership group for the President and VPs to access restricted a file share
New-ADGroup -GroupCategory Security -GroupScope Global -Name Leadership -Path "OU=CH_Groups,https://github.com/cheinle22/IFT220_Lab2"
Write-Host -ForegroundColor yellow "Done creating groups"
Write-Host -ForegroundColor yellow ""