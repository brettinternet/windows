Import-Module posh-git

# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# Source: https://superuser.com/a/1560192
function Relaunch-Admin { Start-Process -Verb RunAs (Get-Process -Id $PID).Path }
Set-Alias psadmin Relaunch-Admin

# DEPRECATED:
# =====================
# Source: https://superuser.com/a/890193/741304
# Uncomment for PowerShell < v6
# Remove-Item alias:curl