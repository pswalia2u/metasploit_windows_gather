function usb_history
{
    Get-ItemProperty -Path HKLM:\SYSTEM\CurrentControlSet\Enum\USBSTOR\*\* | Select FriendlyName,Driver,DeviceDesc | FT -AutoSize     
}
usb_history