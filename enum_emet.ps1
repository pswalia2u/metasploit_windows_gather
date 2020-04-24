function enum_emet 
{
    if(Test-Path "HKLM:\SOFTWARE\Microsoft\EMET\AppSettings")
    {
        Get-ItemProperty -path "HKLM:\SOFTWARE\Microsoft\EMET\AppSettings" | Select-Object *
    }
    else 
    {
        Write-Output "EMET is not installed."   
    }
    
}
enum-emet