cp -Force profile.ps1 $profile

# Reload Powershell
$newProcess = new-object System.Diagnostics.ProcessStartInfo "PowerShell";
[System.Diagnostics.Process]::Start($newProcess);
exit
