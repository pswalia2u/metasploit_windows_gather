Function enum_proxy{
    $proxy=(Get-ItemProperty -Path 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Internet Settings')
    $proxy_status=$proxy.proxyEnable
    if($proxy_status -eq 1)
    {
        write-output $proxy.ProxyServer
    }
    else {
        Write-Output "Proxy disabled"
    }
}
enum_proxy