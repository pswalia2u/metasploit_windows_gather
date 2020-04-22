
function wmi_commands ($path,$command)
{
 Write-Output "Reading commands from $path"
 foreach($line in Get-Content $path)
 {
    Write-Output "Running wmic $line"
    $cmd= "wmic "+ $line
    $output=Invoke-Expression $cmd
    Write-Output $output
}   
}
wmi_commands("C:\Users\pswalia\Desktop\temp.txt")