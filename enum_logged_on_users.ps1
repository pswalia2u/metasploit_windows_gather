function enum_logged_on_users
{
    Write-Output "Current User: $env:USERNAME"
    wmic useraccount get name,sid
} 
enum_logged_on_users