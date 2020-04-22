function installed_apps 
{
    Get-ItemProperty HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object @{Name="Name";Expression={$_.DisplayName} }, @{Name="Version";Expression={$_.DisplayVersion}} | Format-Table –AutoSize
    #Get-ItemProperty HKCU:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object @{Name="Name";Expression={$_.DisplayName} }, @{Name="Version";Expression={$_.DisplayVersion}} | Format-Table –AutoSize
    #Get-ItemProperty HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object @{Name="Name";Expression={$_.DisplayName} }, @{Name="Version";Expression={$_.DisplayVersion}} | Format-Table –AutoSize
    #Get-ItemProperty HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\* | Select-Object @{Name="Name";Expression={$_.DisplayName} }, @{Name="Version";Expression={$_.DisplayVersion}} | Format-Table –AutoSize

}
installed_apps