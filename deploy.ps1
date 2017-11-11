cp -Force profile.ps1 $profile
Copy-Item -Path ./home/** -Destination $home -Include **

# Reload Powershell
$newProcess = new-object System.Diagnostics.ProcessStartInfo "PowerShell";
[System.Diagnostics.Process]::Start($newProcess);
exit
