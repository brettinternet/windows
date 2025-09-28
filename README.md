# Windows

See my various [computer builds](https://pcpartpicker.com/user/toeslayer/builds/).

## Setup

- [Packages](./packages/)
- [Scripts](./scripts/)

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

### Dual boot

#### Time

[Configure Windows to use UTC](https://wiki.archlinux.org/index.php/System_time#UTC_in_Windows):

```powershell
reg add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\TimeZoneInformation" /v RealTimeIsUniversal /d 1 /t REG_QWORD /f
```
