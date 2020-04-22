function enum_devices 
{
    Get-CimInstance Win32_PnPSignedDriver | Select Description,DriverVersion,DeviceClass,Manufacturer    
}
enum_devices