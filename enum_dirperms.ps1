Function enum_dirperms ($path)
{
    Write-Output "Checking permisiions for $path"
    (Get-Acl -Path $path).Access | Select-Object *

}
enum_dirperms("c:")