Function enum_shares
{
    (Get-ChildItem "HKLM:\System\CurrentControlSet\Services\LanmanServer\Shares" | Select-Object Property).Property
}
enum_shares