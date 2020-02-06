# Windows

## Install

### Chocolatey

In PowerShell:

```ps1
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

[Install](https://github.com/chocolatey/choco/wiki/CommandsInstall#packagesconfig) the [packages/base.config](./packages/base.config) with `choco install -y packages.config`.

#### List of chocolatey package names with links to download pages (to manually download)

##### [`base.config`](./packages/base.config)

- [spotify](https://www.spotify.com/us/)
- [slack](https://slack.com/downloads/windows)
- [discord.install](https://discordapp.com/download)
- [firefox](https://www.mozilla.org/en-US/firefox/new/)
- [googlechrome](https://www.google.com/chrome/)
- [7zip.install](https://www.7-zip.org/download.html)
- [plexmediaplayer](https://www.plex.tv/media-server-downloads/#plex-app)
- [bitwarden](https://bitwarden.com/)
- [coretemp](https://www.alcpu.com/CoreTemp/)
- [cpu-z.install](https://www.cpuid.com/softwares/cpu-z.html)
- [spacesniffer](http://www.uderzo.it/main_products/space_sniffer/)
- [lightshot.install](https://app.prntscr.com/en/index.html)

##### [`dev.config`](./packages/dev.config)

- [git.install](https://git-scm.com/)
- [vscode](https://code.visualstudio.com/)
- [autohotkey.install](https://www.autohotkey.com/download/)
- [nodejs-lts](https://nodejs.org/en/)
- [yarn](https://yarnpkg.com/en/docs/install#windows-stable)
- [docker-cli](https://www.docker.com/get-started) or [docker-desktop](https://www.docker.com/products/docker-desktop)
- [docker-compose](https://docs.docker.com/compose/install/)
- [minikube](https://kubernetes.io/docs/setup/learning-environment/minikube/)
- [curl](https://curl.haxx.se/) (note: [remove the PowerShell alias:curl](https://superuser.com/a/890193/741304))
- [nmap](https://nmap.org/download.html)
- [procmon](https://docs.microsoft.com/en-us/sysinternals/downloads/procmon)
- [rufus](https://rufus.ie/)
- [firacode](https://github.com/tonsky/FiraCode)
- [sourcecodepro](https://github.com/adobe-fonts/source-code-pro)

##### [`gaming.config`](./packages/gaming.config)

- [geforce-game-ready-driver](https://www.nvidia.com/download/driverResults.aspx/119914/en-us)
- [geforce-experience](https://www.nvidia.com/en-us/geforce/geforce-experience/)
- [steam](https://store.steampowered.com/about/)
- [epicgameslauncher](https://www.epicgames.com/store/en-US/)

##### [`other.config`](./packages/other.config)

- [logitech-options](https://support.logitech.com/en_us/software/options)

#### Update

Update chocolatey packages with `cup all -y` or `chocolatey update all -y`. You may also consider enabling an option to [ignore confirmation prompts](https://stackoverflow.com/a/30428182).

## Setup

### PowerShell

#### Modules

1. Install the latest PowerShellGet with `Install-Module PowershellGet -Force`
1. Install [posh-git](https://github.com/dahlbyk/posh-git) with `PowerShellGet\Install-Module posh-git -Scope CurrentUser -AllowPrerelease -Force` (this is preferred over installing through Chocolatey since choco puts it in [a strange location](https://github.com/dahlbyk/posh-git/issues/473) and doesn't add it to the `$PSModulePath`)

#### Profile

- [Add custom profile](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.core/about/about_profiles?view=powershell-6) - Move `Microsoft.PowerShell_profile.ps1` to `~/Documents/WindowsPowerShell/`

### Fonts

- [Fira Code](https://github.com/tonsky/FiraCode) - ligatures ✅
- [Source Code Pro](https://github.com/adobe-fonts/source-code-pro)

### Scripts

- [Map capslock to escape](http://vim.wikia.com/wiki/Map_caps_lock_to_escape_in_Windows)
- [Make any window transparent](https://stackoverflow.com/a/45246326/6817437)

#### Run at startup

Add shortcuts to scripts to startup folder - `Run` (`Windows` + `r`) command `shell:startup`

## Shell

- [Powershell notes](https://github.com/brettinternet/public-notes/blob/master/scripts/powershell.md)

## Settings

### Time

[Configure Windows to use UTC](https://wiki.archlinux.org/index.php/System_time#UTC_in_Windows):

```powershell
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\TimeZoneInformation" /v RealTimeIsUniversal /d 1 /t REG_QWORD /f
```
