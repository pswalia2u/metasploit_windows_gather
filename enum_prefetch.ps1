Function enum_prefetch
{
    Get-ItemProperty -path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters\" 
}
enum_prefetch