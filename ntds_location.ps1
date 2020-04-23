Function ntds_location
{
    if(Test-path "HKLM:\SYSTEM\CurrentControlSet\Services\NTDS\Parameters")
    {
        Write-Output "File exists at: HKLM:\SYSTEM\CurrentControlSet\Services\NTDS\Parameters"
    }
    else
    {
        Write-Error "File Doesn't Exists"
    }
}
ntds_location