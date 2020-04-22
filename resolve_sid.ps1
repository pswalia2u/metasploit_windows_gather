function resolve_sid ($sid)
{    
    Get-CimInstance Win32_UserAccount | Where-Object sid -eq $sid | Select-Object SIDType,Name,Domain | Format-List   
}
resolve_sid("S-1-5-21-3008179592-278537146-2455829783-500")