Function enum_files ($loc)
{
    
    Get-ChildItem -Path $loc -Recurse | Where-Object { $_.PSIsContainer }
}
enum_files("c:")