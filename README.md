# Windows

## Setup

```ps
git submodule init
```

### PowerShell

Use Windows Terminal

See also [PowerShell notes](https://github.com/brettinternet/public-notes/blob/master/scripts/powershell.md)

#### Modules

1. Install the latest PowerShellGet with `Install-Module PowershellGet -Force`
1. Install [posh-git](https://github.com/dahlbyk/posh-git) with `PowerShellGet\Install-Module posh-git -Scope CurrentUser -AllowPrerelease -Force` (this is preferred over installing through Chocolatey since choco puts it in [a strange location](https://github.com/dahlbyk/posh-git/issues/473) and doesn't add it to the `$PSModulePath`)

#### Profile

- [Copy custom profile](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles?view=powershell-6) - Copy `Microsoft.PowerShell_profile.ps1` to `~/Documents/PowerShell/` (or `~/Documents/WindowsPowerShell/` for PowerShell < v6) - A mere shortcut or `mklink` doesn't appear to work for Windows Terminal to load the $PROFILE

### Scripts

`HttpGetCmds.ahk` runs a local REST server which runs functions from GET requests. I use this to run simple commands in the background from the Stream Deck.

Add shortcuts to scripts to the startup folder - `Run` (`Windows` + `r`) command `shell:startup`.

## Apps

### Ansible

#### Configure winrm

```ps1
iex(iwr https://raw.githubusercontent.com/ansible/ansible/devel/examples/scripts/ConfigureRemotingForAnsible.ps1).Content
```

### Chocolatey setup

```ps1
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

#### Install package collections

[Install](https://github.com/chocolatey/choco/wiki/CommandsInstall#packagesconfig) packages:

```ps1
choco install -y packages/[name].config
```

Windows Store versions may need to be uninstalled first. See [packages](./packages).

#### Update

Update chocolatey packages with `cup all -y` or `chocolatey update all -y`. You may also consider enabling an option to [ignore confirmation prompts](https://stackoverflow.com/a/30428182).

## Windows Installation

Use <kbd>Shift</kbd> + <kbd>F10</kbd> for command prompt.

To setup Windows 11 without signing into Microsoft, enter command before signing into a network:

```
oobe\bypassnro
```

Open settings window:

```
start ms-settings:
```

## Settings

### Time

[Configure Windows to use UTC](https://wiki.archlinux.org/index.php/System_time#UTC_in_Windows):

```powershell
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\TimeZoneInformation" /v RealTimeIsUniversal /d 1 /t REG_QWORD /f
```
