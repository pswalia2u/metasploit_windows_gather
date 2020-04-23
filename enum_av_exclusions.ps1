Function enum_excluded
{
    Get-MpPreference | Select-Object ExclusionPath,ExclusionExtension,ExclusionProcess
}