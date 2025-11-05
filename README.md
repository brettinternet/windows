# Windows

See my various [computer builds](https://pcpartpicker.com/user/toeslayer/builds/).

## Setup

- [Packages](./packages/)
- [Scripts](./scripts/)

## Tips

### Windows Installation

Use <kbd>Shift</kbd> + <kbd>F10</kbd> for command prompt.

To setup Windows 11 without signing into Microsoft, enter command before signing into a network:

```
oobe\bypassnro
```

Open settings window:

```
start ms-settings:
```

### Regedits

#### Reassign Media Player keyboard button

Add string value to `Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\AppKey\16` named "ShellExecute" and modify the value to `C:\Users\<username>\AppData\Local\Microsoft\WindowsApps\SpotifyAB.SpotifyMusic_zpdnekdrzrea0/spotify.exe`. ([source](https://community.spotify.com/t5/Desktop-Windows/Fixing-your-Media-Player-Keyboard-Function-Button-to-Open/td-p/4642394))
