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
    $app=Get-ChildItem Get-Item -Path "HKCU:\SOFTWARE\Microsoft\Office\$version\*" | Select-Object PsChildName
    $app
}


Function enum_trusted_locations1 ($ver,$app_name)
{
    Write-Output $ver
    Write-Output $app_name
    if(Test-Path("HKCU:\SOFTWARE\Microsoft\Office\$ver\$app_name\Security\Trusted Locations"))
    {
        Get-ChildItem -path "HKCU:\SOFTWARE\Microsoft\Office\$ver\$app_name\Security\Trusted Locations"
    }
    else
    {
        Write-Output "No trusted locations exists."
    }
}
enum_trusted_locations1 "16.0" "Word"