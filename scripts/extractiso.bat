for /R "%~dp0" %%I in ("*.iso") do (
  "C:\Program Files\7-Zip\7z.exe" x -y -xr!"*.rar" -o"%%~dpI" "%%~fI" && del "%%~fI"
)
