# Scripts

## Setup

```ps
git submodule init
```

### PowerShell

Use Windows Terminal

#### Modules

1. Install the latest PowerShellGet with `Install-Module PowershellGet -Force`
1. Install [posh-git](https://github.com/dahlbyk/posh-git) with `PowerShellGet\Install-Module posh-git -Scope CurrentUser -AllowPrerelease -Force` (this is preferred over installing through Chocolatey since choco puts it in [a strange location](https://github.com/dahlbyk/posh-git/issues/473) and doesn't add it to the `$PSModulePath`)

#### Profile

- [Copy custom profile](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles?view=powershell-6) - Copy `Microsoft.PowerShell_profile.ps1` to `~/Documents/PowerShell/` (or `~/Documents/WindowsPowerShell/` for PowerShell < v6) - A mere shortcut or `mklink` doesn't appear to work for Windows Terminal to load the $PROFILE


## Scripts

### HttpGetCmds.ahk

`HttpGetCmds.ahk` runs a local REST server which runs functions from GET requests. I use this to run simple commands in the background from the Stream Deck.

Add shortcuts to scripts to the startup folder - `Run` (`Windows` + `r`) command `shell:startup`.
