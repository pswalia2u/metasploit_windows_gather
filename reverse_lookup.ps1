function reverse_lookup ($ip)
{
    ([Net.Dns]::GetHostByAddress($ip)) | select HostName | FL
}
reverse_lookup("23.35.32.119")
