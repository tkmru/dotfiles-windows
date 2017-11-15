Set-Alias g git
Set-Alias cl clear
Set-Alias l ls
${function:l} = { ls -Force @args }
${function:up} = { Set-Location .. }

# Missing Bash aliases
function which($name) { Get-Command $name -ErrorAction SilentlyContinue | Select-Object Definition }
Set-Alias time Measure-Command

function reload() {
  $newProcess = new-object System.Diagnostics.ProcessStartInfo "PowerShell";
  $newProcess.Arguments = "-nologo";
  [System.Diagnostics.Process]::Start($newProcess);
  exit
}
