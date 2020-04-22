function psreadline_history 
{
    $appdata=$env:APPDATA
    Get-Content "$appdata\Microsoft\Windows\PowerShell\PSReadLine\ConsoleHost_history.txt"

}
psreadline_history