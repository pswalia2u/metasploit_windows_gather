function win_privs 
{
    $cur_user=[System.Security.Principal.WindowsIdentity]::GetCurrent().Name
    $currentPrincipal = New-Object Security.Principal.WindowsPrincipal([Security.Principal.WindowsIdentity]::GetCurrent())
    $value=$currentPrincipal.IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)    
    if($value.ToString() -eq "True")
    {
        Write-Output "Running as Administrator"
    }
    else 
    {
        Write-Output "Running as $cur_user"
    }
}
win_privs
 