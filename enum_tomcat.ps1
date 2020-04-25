Function enum_tomcat
{
    if(Test-Path "HKLM:\SOFTWARE\Apache Software Foundation\Tomcat\")
    {
    Get-ChildItem -path "HKLM:\SOFTWARE\Apache Software Foundation\Tomcat\" -Recurse
    }
    else
    {
        Write-Output "Apache is not installed."
    }
}