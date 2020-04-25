function enum_versions 
{
    if(Test-Path HKCU:\SOFTWARE\Microsoft\Office\)
    {
        $version=Get-ChildItem "HKCU:\SOFTWARE\Microsoft\Office\" | Select-Object Name | Select-String -Pattern  '[0-9][0-9].0'
        $version
    }
}

function applications($version) 
{
    $version=15.0
    $app=Get-ChildItem Get-Item -Path "HKCU:\SOFTWARE\Microsoft\Office\$version\*" | Select-Object PsChildName
    $app
}

Get-ChildItem -path "HKCU:\SOFTWARE\Microsoft\Office\16.0\Word\Security\Trusted Locations"