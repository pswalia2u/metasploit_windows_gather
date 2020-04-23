Function enum_computers
{
    if( ((Get-CimInstance -Class Win32_ComputerSystem).PartOfDomain).ToString() -eq "False")
    {
        Write-Error "This host is not part of a domain."
    }
}
enum_computers